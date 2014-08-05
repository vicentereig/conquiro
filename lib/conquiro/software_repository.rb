require 'active_support/core_ext/hash/reverse_merge'
require 'conquiro/search_api/adapter'
require 'conquiro/criteria'

module Conquiro
  class SoftwareRepository < Struct.new(:adapter)
    def query(params)
      params.reverse_merge!(default_params)
      criteria = Conquiro::Criteria.new
      params.each { |name, value|
        criteria[name] = value
      }
      adapter.query(criteria)
    end

    def adapter
      super || Conquiro::SearchAPI::Adapter.new
    end

  protected
    def default_params
      {entity: 'software'}
    end
  end
end
