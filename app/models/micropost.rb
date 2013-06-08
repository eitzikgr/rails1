class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  #validates:content; lenght=>{:maximum=>50}
  validates :content, :length => { :maximum => 15 }
  validates :content, :length => { :minimum => 5 }
  #belongs_to: user
end
