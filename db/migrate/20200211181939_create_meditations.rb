class CreateMeditations < ActiveRecord::Migration[6.0]
  def change
    create_table :meditations do |t|
      t.integer :user_id
      t.string :before
      t.string :after
      t.integer :time
      t.timestamps
    end
  end
end
