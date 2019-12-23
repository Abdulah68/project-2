class User < ApplicationRecord
  has_many :cars , dependent: :destroy  
  #  In case want delete user should delete user then delete car 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# validates :name, presence: true, length: {minimum: 3} # presence means the value is existing meaning it’s not empty

#  validates :name, uniqueness: { case_sensitive: false } # checks the case_sensitive
     
#  validates :year, numericality: true

#  validates :price, numericality: true
     
#  validates :name, length: {minimum: 3, maximum: 5}
end
