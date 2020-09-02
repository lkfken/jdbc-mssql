warn "Jdbc-MSSQL is only for use with JRuby" unless defined?(JRUBY_VERSION)
require "jdbc/mssql/version"

module Jdbc
  module MSSQL
    def self.driver_jar
      case self.java_version
      when '1.8'
        'sqljdbc42.jar'
      when '1.7'
        'sqljdbc41.jar'
      else
        raise LoadError, "Version #{VERSION} of Jdbc-MSSQL requires Java 1.7 or later. Your Java version is #{self.java_version}"
      end
    end

    def self.java_version
      Java::java.lang.System::get_property("java.specification.version")
    end

    def self.java7_or_later?
      ((java_version.split('.').map(&:to_i) <=> [1, 7]) >= 0)
    end

    def self.load_driver(method = :load)
      app_root_folder = Pathname(File.join(File.dirname(__FILE__), '..', '..')).realpath
      driver_folder = app_root_folder + 'vendor' + 'microsoft'
      send method, driver_folder + driver_jar if java7_or_later?
    end

    def self.driver_name
      'com.microsoft.sqlserver.jdbc.SQLServerDriver'
    end

    load_driver :require
  end
end
