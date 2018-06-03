require 'pry'
class CashRegister

  attr_accessor :total, :discount, :descuento, :items
  
  def initialize(dis=nil)
    @total = 0 
    @discount = dis 
    @items = []
  end
  
  def add_item(item, price, quantity=nil)
    if quantity == nil
      @total += price
    else
      @total += price*quantity
    end
    quantity.times do
    @items << item
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
  
  def items
    @items
  end
end

  