class Amoeba < ActiveRecord::Base
  attr_accessible :name, :act_id, :talent_id, :generation_num
  belongs_to :act
  has_one :talent

  # def initialize
  #   @gen ||= 1
  # end

  def split
    # first = 
    # second = 
    # destroy
  end
end