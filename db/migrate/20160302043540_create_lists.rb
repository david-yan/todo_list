class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.string :thing_to_do

      	t.timestamps null: false
    end
  end
end
