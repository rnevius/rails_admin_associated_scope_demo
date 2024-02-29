# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  default_scope { where(active: true) }

  rails_admin do
    scope { Player.unscoped }
  end
end
