require 'conquiro/search_api/software_serializer'

module Conquiro
  module SearchAPI
    class ResultSerializer
      def self.serializer_for(attributes)
        wrapper_type = attributes.delete(:kind)
        case wrapper_type
          when /software/i then Conquiro::SearchAPI::SoftwareSerializer.new(attributes)
          else raise "Unsupported serializer type: #{wrapper_type}."
        end
      end
    end
  end
end
