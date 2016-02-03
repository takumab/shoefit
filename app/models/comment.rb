class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  self.per_page = 5

  #This validation ensures all comments, users, product, and ratings are present.
	validates :body, presence: true
	  validates :user, presence: true
	  validates :product, presence: true
	  validates :rating, numericality:{only_integer: true}

end
