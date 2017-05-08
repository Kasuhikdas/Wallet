class Transaction < ApplicationRecord
	belongs_to :user
	before_validation :check_and_update_balance

  
   def check_and_update_balance
    
      if user.email==user_email
     
       errors.add(:email,"Can not send money to own number")
      else
      if User.find_by(email: user_email).nil? == true
         errors.add(:email,"Email Should Be valid")
      
      else 
        
        receiver = User.find_by(email: user_email)
    
        if user.Balance-amount >=0
         bal=user.Balance
         bals=receiver.Balance
       
         user.update_attributes(Balance: bal - amount)
         receiver.update_attributes(Balance: bals + amount)   
        else
           errors.add(:balance,"Insufficiet balance all balance to wallet to proceed furthur")
         end
      
       
      end
    end
  end
  

end
