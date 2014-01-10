class Amoeba < ActiveRecord::Base
  attr_accessible :name, :act_id, :talent_id, :gen_num
  belongs_to :act
  has_one :talent

  def split
    babies = []
    babies << Amoeba.create(:name => "bob", :act_id => act_id, 
      :talent_id => talent_id, :gen_num => gen_num + 1)
    babies << Amoeba.create(:name => "sally", :act_id => act_id, 
      :talent_id => talent_id, :gen_num => gen_num + 1)
    destroy
    babies
  end

end