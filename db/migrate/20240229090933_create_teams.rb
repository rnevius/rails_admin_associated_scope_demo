# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.boolean :active, default: true, null: false
      t.timestamps
    end
  end
end
