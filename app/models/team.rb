# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players, dependent: :destroy

  default_scope { where(active: true) }

  rails_admin do
    configure :players do
      associated_collection_cache_all false
      associated_collection_scope do
        proc { |scope| scope.unscoped }
      end
    end
  end
end
