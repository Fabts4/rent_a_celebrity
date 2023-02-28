class AddShortDescToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :short_desc, :string
  end
end
