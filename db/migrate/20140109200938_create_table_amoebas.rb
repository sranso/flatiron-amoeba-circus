class CreateTableAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.integer :generation_num
      t.integer :talent_id
      t.integer :act_id

      t.timestamps
    end
  end
end
