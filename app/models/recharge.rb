class Recharge < ApplicationRecord
  validates_length_of :number, :minimum => 10, :maximum => 10
	has_many :operators
	has_many :plans
	belongs_to :user
	before_validation :check_and_update_balance

  
   def check_and_update_balance
    
      if user.Balance-amount >=0
         bal=user.Balance       
         user.update_attributes(Balance: bal - amount)
            
      else
          errors.add(:amount,"Insufficiet balance add balance to wallet to proceed further")
       end
      
    end 
 
 
end
