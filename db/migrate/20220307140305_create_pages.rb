# frozen_string_literal: true
class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages, id: false do |t| 
      # t.uuid   :id, primary_key: true, null: false
      t.string :slug, primary_key: true, null: false
      t.string :title
      t.text   :body

      t.timestamps
    end
  end
end
