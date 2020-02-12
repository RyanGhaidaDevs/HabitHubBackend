class CreateShowers < ActiveRecord::Migration[6.0]
  def change
    create_table :showers do |t|
      t.integer :user_id
      t.string :minutes
      t.timestamps
    end
  end
end
