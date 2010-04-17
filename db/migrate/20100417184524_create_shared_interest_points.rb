class CreateSharedInterestPoints < ActiveRecord::Migration
  def self.up
    create_table :shared_interest_points do |t|
      t.integer :image_1_id
      t.integer :image_2_id
      t.integer :x1
      t.integer :y1
      t.integer :x2
      t.integer :y2
      t.float :interest

      t.timestamps
    end
  end

  def self.down
    drop_table :shared_interest_points
  end
end
