class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.integer :user_id
      t.string :journal
      t.timestamps
    end
  end
end
