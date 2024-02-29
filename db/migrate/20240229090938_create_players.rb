# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.boolean :active, default: true, null: false
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
