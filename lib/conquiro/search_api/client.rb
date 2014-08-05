require 'httparty'
require 'active_support/core_ext/hash/indifferent_access'

module Conquiro
  module SearchAPI
    class Client
      include HTTParty
      base_uri 'https://itunes.apple.com'

      def query(params)
        params = strip_empty(params)
        response = self.class.get('/search', query: params)
        JSON.parse(response).with_indifferent_access
      end

      def strip_empty(params)
        params.select { |name, value| value.present? }
      end
    end
  end
end
