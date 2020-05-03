class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
   @discount = discount
   @items = []
end

   def add_item(title, price, quantity = 1)
    if quantity > 1
      self.total += price * quantity
      @items << title
    else
      self.total += price
      @items << title
    end
   end
   
   def apply_discount
     if @discount  == 0
      "There is no discount to apply."
   else
      @discount = @discount/100.to_f
      @total -= @total * @discount
     "After the discount, the total comes to $#{@total.to_i}."
   end
   end
   
end
