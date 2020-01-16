class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :native_tongue
      t.string :gender

      t.timestamps
    end
  end
end
