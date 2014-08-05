require 'conquiro/search_api/client'
require 'conquiro/search_api/result_collection'

module Conquiro
  module SearchAPI
    class Adapter
      def query(criteria)
        raise 'Criteria is not valid.' unless criteria.valid?
        response = client.query(criteria.params)
        results = response[:results]
        Conquiro::SearchAPI::ResultCollection.from_json(results)
      end

      def client
        @client ||= SearchAPI::Client.new
      end
    end
  end
end
