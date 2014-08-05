require 'conquiro/software'
require 'active_support/inflector'

module Conquiro
  module SearchAPI
    class SoftwareSerializer < Struct.new(:attributes)
      def serialize
        app = Conquiro::Software.new
        attributes.each { |name, value|
          app[name.underscore] = value
        }
        app
      end
    end
  end
end
