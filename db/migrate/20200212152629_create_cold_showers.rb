class CreateColdShowers < ActiveRecord::Migration[6.0]
  def change
    create_table :cold_showers do |t|
      t.integer :user_id
      t.string :minutes
      t.timestamps
    end
  end
end
