class AddCountryIdToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :country_id, :integer
  end
end
