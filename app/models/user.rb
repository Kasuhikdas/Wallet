class User < ApplicationRecord
 
  before_validation :check_and_update_balance
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :transactions
   has_many :addbalances
   has_many :recharges

   def check_and_update_balance
   	
   end
end
