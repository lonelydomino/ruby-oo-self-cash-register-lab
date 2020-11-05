
class CashRegister

    attr_accessor :discount, :total, :last_quantity, :last_price

def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
end
def add_item(item, price, quantity = 1)
    @last_quantity = quantity
    @last_price = price
    quantity.times do |i|
         self.items << item
      end
      @total += price * quantity
  end
def apply_discount
  temp = @total * (discount.to_f / 100.00)
  @total = @total - temp
    if discount != 0    
       return "After the discount, the total comes to $#{@total.to_int}."
    else
        return "There is no discount to apply."
    end
end
def items
    @items
end
def void_last_transaction
    @last_quantity.times do |i|
        @total = @total - @last_price
        @items.pop
    end
    if @items.empty?
        return @total = 0.0
    end   
end

end