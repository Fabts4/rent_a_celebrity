class DeleteAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_columns(:users, :city, :zip_code)
  end
end
