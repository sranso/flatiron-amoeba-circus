class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.integer :gen_num, :default => 1
      t.integer :act_id
      t.integer :talent_id

      t.timestamps
    end
  end
end
