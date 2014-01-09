class Amoeba < ActiveRecord::Base
  attr_accessible :name, :act_id, :talent_id
  belongs_to :act
  has_one :talent
end