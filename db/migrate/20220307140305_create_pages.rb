# db/migrate/20220307140305_create_pages.rb
# ©José Bonnet
class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages, { id: false, primary_key: :slug} do |t|
      t.string :slug, null: false
      t.string :title, null: false
      t.text   :body

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end

