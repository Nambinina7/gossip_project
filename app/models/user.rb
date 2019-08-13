class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
	has_many :comments
	has_secure_password

		validates :first_name, presence: true
   	validates :last_name, presence: true
  	validates :email,
   presence: true,
   uniqueness: true,
   format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
   validates :password, presence: true, length: { in: 6..20}

end
