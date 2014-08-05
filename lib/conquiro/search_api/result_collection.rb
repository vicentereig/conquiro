require 'conquiro/search_api/result_serializer'

module Conquiro
  module SearchAPI
    class ResultCollection
      def self.from_json(json_payload)
        raise 'No results to serialize.' unless json_payload
        json_payload.map { |attributes|
          Conquiro::SearchAPI::ResultSerializer.serializer_for(attributes).serialize
        }
      end
    end
  end
end
