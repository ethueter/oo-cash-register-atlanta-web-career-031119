require 'pry'

class CashRegister
  attr_accessor :total, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @each_price = []
  end

  def discount
    @discount
  end

  def add_item(title, price, qty=1)
     x = 0
     until x == qty
    @items << title
    x += 1
  end
    a = price * qty
    @total += a.to_f
    @each_price << price
  end

  def apply_discount
    if @discount != nil
    @total = @total - (@discount.to_f / 100) * @total
    "After the discount, the total comes to $#{@total.to_int}."
    else
    "There is no discount to apply."
    end
  end

def void_last_transaction
  @total = @total - @each_price.last 

end



end
