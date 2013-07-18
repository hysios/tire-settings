require "tire-settings/version"
require 'tire/index'


module TireSettings
  extend ActiveSupport::Concern

  def setup(options)
    
  end
end


Tire::Index.send(:include, Tire::Settings)
