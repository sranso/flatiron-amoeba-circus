class Amoeba < ActiveRecord::Base
  attr_accessible :name, :act_id, :talent_id, :gen_num
  belongs_to :act
  has_one :talent

  NAMES = ["Confeedent", "Steady Hands", "Clumsee", "Skared", "Crush",
    "Crazee", "InLove", "Beyonce", "Blake", "Bulake"]

  def split
    babies = []
    babies << Amoeba.create(:name => NAMES.sample, :act_id => act_id, 
      :talent_id => talent_id, :gen_num => gen_num + 1)
    babies << Amoeba.create(:name => NAMES.sample, :act_id => act_id, 
      :talent_id => talent_id, :gen_num => gen_num + 1)
    destroy
    babies
  end

end