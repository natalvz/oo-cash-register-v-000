require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :descuento, :item
  
  def initialize(dis=nil)
    @total = 0 
    @discount = dis 
  end
  
  def add_item(item, price, quantity=nil)
    if quantity == nil
      @total += price
    else
      @total += price*quantity
    end
  end
  
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
    @descuento = (@discount*@total)/100
    @total -= @descuento
    return "After the discount, the total comes to $#{total}."
  end
  end 
end

  