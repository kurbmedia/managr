module Managr
  module Generators
    
    ##
    # Generates migrations and initializers.
    # 
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      
      ##
      # Copy initializer and optional migration
      # 
      def copy_files
        template "managr.rb", "config/initializers/managr.rb"
        migration_template "managr_migration.rb", "db/migrate/install_managr.rb"
      end
      
      module MigrationMethods
        ##
        # Required interface for activerecord 
        # migration templates
        # 
        def next_migration_number(dirname)
          next_migration_number = current_migration_number(dirname) + 1
          ::ActiveRecord::Migration.next_migration_number(next_migration_number)
        end
      end
      
      include Rails::Generators::Migration
      extend MigrationMethods
    end
    
  end
end