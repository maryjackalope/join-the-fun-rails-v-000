class Ride < ActiveRecord::Base

  def change
    create_table :taxi do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :passenger do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :ride do |t|
      t.belongs_to :taxi, index: true
      t.belongs_to :passenger, index: true
      t.timestamps
    end
  end
end

