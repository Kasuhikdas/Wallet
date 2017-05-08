class Addbalance < ApplicationRecord
belongs_to :user
before_validation :check_and_update_balance

  
   def check_and_update_balance
    
   		
       bal=user.Balance
      
       user.update_attributes(Balance: bal + amount)
         
   
  end
end
