require 'rails_i18n/common_pluralizations/one_other'

module RailsI18n
  module Pluralization
    module Latvian
      def self.rule
        lambda do |n|
          n ||= 0
          if n % 10 == 1 && n % 100 != 11
            :one
          else
            :other
          end
        end
      end
    end
  end
end

::RailsI18n::Pluralization::OneOther.with_locale(:lv)
