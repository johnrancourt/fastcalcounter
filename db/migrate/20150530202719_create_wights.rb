class CreateWights < ActiveRecord::Migration
  def change
    create_table :wights do |t|
      t.integer :user_id
      t.integer :wegiht

      t.timestamps
    end
  end
end
