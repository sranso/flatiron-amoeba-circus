class CreateTableActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.datetime :date_and_time
      
      t.timestamps
    end
  end
end
