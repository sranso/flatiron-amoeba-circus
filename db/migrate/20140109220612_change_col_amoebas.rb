class ChangeColAmoebas < ActiveRecord::Migration
  def up
    change_column(:amoebas, :generation_num, :integer, :default => 1)
  end

  def down
    change_column(:amoebas, :generation_num, :integer, :default => nil)
  end
end
