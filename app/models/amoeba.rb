class Amoeba < ActiveRecord::Base
  attr_accessible :name, :act_id, :talent_id, :generation_num
  belongs_to :act
  has_one :talent

  def split
    consonants = ["b","c","d","f","g","h","j","ch","gh","m","qu"]
    first = Amoeba.create(:name => name.gsub(/[^aeiou]/, consonants.sample), :act_id => act_id, :talent_id => talent_id, :generation_num => generation_num + 1)
    second = Amoeba.create(:name => name.gsub(/[^aeiou]/, consonants.sample), :act_id => act_id, :talent_id => talent_id, :generation_num => generation_num + 1)
    self.destroy
  end
end