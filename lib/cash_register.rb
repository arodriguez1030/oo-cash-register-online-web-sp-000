class CashRegister
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount = 0)
    @total = 0
   @discount = discount
   @items = []
end

   def add_item(title, price, quantity = 1)
     @price = price
    if quantity > 1
      self.total += @price * quantity
    else
      self.total += @price
    end
    quantity.times {@items << title}
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
   def void_last_transaction
     self.total -= self.price
 end
   
end
