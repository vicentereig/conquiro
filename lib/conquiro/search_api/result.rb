require 'conquiro/software'

module Conquiro
  module SearchAPI
    class Result
      def self.result_for(attributes)
        wrapper_type = attributes.delete(:wrapperType)
        case wrapper_type
          when /software/i then Conquiro::Software.new(attributes)
          else raise "Unsupported result type: #{wrapper_type}."
        end
      end
    end
  end
end
