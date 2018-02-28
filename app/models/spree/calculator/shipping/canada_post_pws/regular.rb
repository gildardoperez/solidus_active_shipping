require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class Regular < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          Spree.t('canada_post_pws.regular')
        end
      end
    end
  end
end
