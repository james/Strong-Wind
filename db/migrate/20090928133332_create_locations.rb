class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :lat
      t.integer :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
