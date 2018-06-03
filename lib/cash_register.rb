require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :descuento
  
  def initialize(dis=nil)
    @total = 0 
    @discount = dis 
  end
  
  def add_item(title, price, quantity=nil)
    if quantity == nil
      @total += price
    else
      @total += price*quantity
    end
  end
  
  def apply_discount
    @descuento = (@discount*@total)/100
    @descuento-= @total
  end 
end

  