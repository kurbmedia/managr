require "managr/engine"
require 'set'

module Managr
  extend self
  mattr_accessor :resources
  @@resources = Set.new([])
  
  autoload :Model, 'managr/model'
  
  
  ##
  # Run during the initial installation/migration to setup 
  # default preferences in the database. 
  # 
  def create_defaults!
    Preference.reset_column_information
    conf = File.join( File.expand_path('../../', __FILE__), 'config', 'defaults.yml' )
    YAML.load( File.open(conf) ).each do |pref|
      Preference.where(key: pref['key'])
        .first_or_create(pref)
    end
  end
  
  
  ##
  # Registers a resource for internal use.
  # 
  def manage(klass)
    @@resources.add(klass)
  end
  
  
  ##
  # Get the value for a particular preference.
  # If a second argument is passed, it will be used as a fallback should 
  # the preference not exist.
  # 
  def pref(name, fallback = nil)
    @@prefs ||= {}
    name = name.to_s
    @@prefs[name] ||= Preference.where(key: name).first.try(:value) || fallback
  end
end

require 'managr/core_ext/string'
