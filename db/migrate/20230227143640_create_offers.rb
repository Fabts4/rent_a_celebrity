class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :celebrity_name
      t.integer :price
      t.string :category
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
