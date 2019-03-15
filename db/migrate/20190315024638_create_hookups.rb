class CreateHookups < ActiveRecord::Migration[5.2]
  def change
    create_table :hookups do |t|
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
