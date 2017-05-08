class HomeController < ApplicationController
  def index
  	@users=User.all
  	
  	#@transactions=Transaction.find_by_user_id()
    @tran=Transaction.last(15)
  	@transaction=Transaction.all
      @addbalance= Addbalance.all
       @addb= Addbalance.last(15)
       @operators = Operator.all
        @oper = Operator.last(15)
         @recharge= Recharge.all
         @rech= Recharge.last(15)
  end
  def recharge
  	
  	 @transactions = Transaction.all
     @addbalance= Addbalance.all
   
  end
end
