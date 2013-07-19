require "tire-settings/version"
require 'tire/index'


module TireSettings
  extend ActiveSupport::Concern

  def put_settings(options)
	@response = Configuration.client.put("#{url}/_settings",  MultiJson.encode(payload))
    MultiJson.decode(@response.body)["ok"]
  end
end


Tire::Index.send(:include, TireSettings)
