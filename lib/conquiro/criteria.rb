require 'cgi'
require 'active_model'

module Conquiro
  class Criteria < Struct.new(:term, :country, :media, :entity, :attribute, :limit, :version, :explicit)
    include ActiveModel::Validations
    DEFAULT_COUNTRY = 'us'

    validates :term, presence: true
    validates :country, presence: true

    def country
      super || DEFAULT_COUNTRY
    end

    def params
      self.to_h.select { |_,value| value.present? }
    end

    def term
      CGI.escape(super || '')
    end
  end
end
