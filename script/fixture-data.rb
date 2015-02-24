#!/usr/bin/env ruby
require './fixtures.rb'


$arg_variable = ARGV[0]



current_dir = File.expand_path(Dir.pwd)
# current_dir = "#{current_dir}/halo-sql"


$yaml_file_name = "table_dependencies.yaml"
$script_file_location = "#{current_dir}/script/"
$yaml_file_location = "#{current_dir}/post_deployment_script/"
$table_dump_location = "#{current_dir}/table_dumps/"
$yaml_Object = Hash.new
$tables_queue  = Array.new


def self.main()


    if $arg_variable == "dump" then

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


    elsif $arg_variable == "install"


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

    elsif $arg_variable == "dump-install"


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
        puts "1. 'dump' if you are trying to dump data \n"
        puts "2. 'install' if you are trying to install data \n"
        puts "3. 'dump-install' if you are trying to dump data and then install them. \n"

  end

end
