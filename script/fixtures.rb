#!/usr/bin/env ruby
require 'mysql2'
require 'yaml'


arg_variable = ARGV[0]

# Traversing depth-first fixture data solution.

## variables:

current_dir = File.expand_path(Dir.pwd)
# current_dir = "#{current_dir}/halo-sql"


$yaml_file_name = "table_dependencies.yaml"
$script_file_location = "#{current_dir}/script/"
$yaml_file_location = "#{current_dir}/post_deployment_script/"
$table_dump_location = "#{current_dir}/table_dumps/"
$yaml_Object = Hash.new
$tables_queue  = Array.new


def self.metamysql

begin
puts "Creating Table Dependency file."

con = Mysql2::Client.new(:host => "localhost", :username => "hautelook", :password => "hautelook", :database => "hautelook")
listoftables = con.query('show tables from hautelook')
listoftables.each do |getfk|
switchtoinformation = con.query("use INFORMATION_SCHEMA;")
getfk = getfk["Tables_in_hautelook"]
fktables = con.query("select REFERENCED_TABLE_NAME from KEY_COLUMN_USAGE
where TABLE_SCHEMA = 'hautelook' and TABLE_NAME = '#{getfk}'
and referenced_column_name is not NULL;")

rs00 = ""

fktables.each do |getfknames|

	   fktables = getfknames["REFERENCED_TABLE_NAME"]
	    rs00 << "#{fktables},"
end
rs001 = "#{rs00.to_s}"
foreingKeyTablesArray = rs001.split(",").map(&:to_s)
 main_text = "#{getfk}: #{foreingKeyTablesArray}"

File.open("#{$yaml_file_location}#{$yaml_file_name}", "a") do |f2|
  f2.puts "#{main_text} \n"
end

end
con.close

puts "Done.."

rescue Exception => e

	puts e

end
end


## load yaml into an ruby object:

def self.load_yaml()

	puts "loading yaml file into object."

	begin

		$yaml_Object = YAML::load_file("#{$yaml_file_location}#{$yaml_file_name}")

	rescue Exception => e

		puts e


	end

	puts "Done.."

end

def self.install_table_to_mysql(tables_queue)

	puts "installing mysql tables."

	begin



			tables_queue.each do |install_table|

				next if install_table == "view_gp_po_header"
				puts "installing: #{install_table}"
				installtables = Thread.new do
  					system("mysql -uroot hautelook < #{$table_dump_location}#{install_table}.sql")
				end
				installtables.join
	  		end

	  		system("mysql -uroot hautelook < #{$table_dump_location}view_gp_po_header.sql")
	  		puts "installing: view_gp_po_header"

	rescue Exception => e

		puts e

	end
		puts "Done.."
end

def self.dump_table_from_mysql(tables_queue)

	puts "dumping mysql tables."

	begin

		tables_queue.each do |dump_table|

				puts "Dumping: #{dump_table}"
				dumptables = Thread.new do
  					system("mysqldump -uroot hautelook #{dump_table} > #{$table_dump_location}#{dump_table}.sql")
				end
				dumptables.join
		end


	rescue Exception => e

		puts e

	end
		puts "Done.."
end


def self.mysql_preinstall()

	puts "checking pre-req. for mysql"

	begin

		system("mysql -e 'DROP DATABASE IF EXISTS hautelook;' --user=root")
		system("mysql -e 'CREATE DATABASE hautelook;' --user=root")
		system("mysql -e 'GRANT ALL PRIVILEGES ON * . * TO \"hautelook\"@\"%\";' --user=root")
		system("mysql -e 'FLUSH PRIVILEGES;' --user=root")

	rescue Exception => e

		puts e

	end
	puts "Done.."
end


def self.mysql_dump_sproc()

	puts "Dumping sprocs."

	begin

				dumpsproc = Thread.new do
  					system("mysqldump -uroot --routines --skip-triggers --no-create-info --no-data --no-create-db --skip-opt hautelook > #{$table_dump_location}sproc.sql")
				end
				dumpsproc.join



	rescue Exception => e

	end
		puts "Done.."
end

def self.mysql_install_sproc()

	puts "installing sprocs."

	begin

				dumpsproc = Thread.new do
  					system("mysql -uroot hautelook < #{$table_dump_location}sproc.sql")
				end
				dumpsproc.join



	rescue Exception => e

	end
	puts "Done.."
end




def self.dfs_tables(yaml_Object,current_table)

	begin

		  yaml_Object.each {|key, value|

		    next if $tables_queue.include?(key)

      	 	 if key == current_table then

        		 	if value.empty? then

        				$tables_queue.push(key) unless $tables_queue.include?(key)

      				else

                		value.each do |itr_tables|

                		next if $tables_queue.include?(itr_tables)

           					yaml_Object.key? (itr_tables) ? dfs_tables(yaml_Object,itr_tables) : puts()

            			end

          			end
      	  		end

  			}

  				$tables_queue.push(current_table) unless $tables_queue.include?(current_table)

  				# dump_table_from_mysql(current_table)

	rescue Exception  =>  e

				# puts e

		end


end


def self.postDeploymentScript()
	puts "running postDeploymentScript"

	begin

				dumpsproc = Thread.new do
  					system("mysql -uroot hautelook < #{$yaml_file_location}postDeploymentScript")
				end
				dumpsproc.join
	rescue Exception => e

	end
puts "Done"

end





###### Main #####



if arg_variable == "dump" then

metamysql

load_yaml

yObject = $yaml_Object

puts "loading DFS into memory:"

yObject.each do |key,val|

	dfs_tables(yObject,key)

end

puts "done.."

dump_table_from_mysql($tables_queue)

mysql_dump_sproc()


elsif arg_variable == "install"


load_yaml

yObject = $yaml_Object

puts "loading DFS into memory:"

yObject.each do |key,val|

	dfs_tables(yObject,key)

end

puts "done.."

mysql_preinstall()

install_table_to_mysql($tables_queue)

mysql_install_sproc()

postDeploymentScript

elsif arg_variable == "dump-install"


metamysql

load_yaml

yObject = $yaml_Object

puts "loading DFS into memory:"

yObject.each do |key,val|

	dfs_tables(yObject,key)

end

puts "done.."

dump_table_from_mysql($tables_queue)

mysql_dump_sproc()

mysql_preinstall()

install_table_to_mysql($tables_queue)

mysql_install_sproc()

postDeploymentScript


else

	puts " Need to pass argument to this script: \n"
	puts " 'dump' if you are trying to dump data \n"
	puts " 'install' if you are trying to install data \n"
	puts " 'dump-install' if you are trying to dump data and then install them. \n"

end
