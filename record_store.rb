
class Album
  attr_reader :name, :number_in_stock, :price  # => nil

  def initialize(name, number_in_stock, price)
    @name = name                                # => "Nevermind"
    @number_in_stock = number_in_stock          # => 10
    @price = price                              # => 9.99
  end                                           # => :initialize

  def sell_album
    if number_in_stock == 0  # => false
      raise "Out of stock"
    end                      # => nil
    @number_in_stock -=1     # => 9
  end                        # => :sell_album

  def add_stock(amount_to_add)
    @number_in_stock + amount_to_add  # => 16

  end  # => :add_stock
end    # => :add_stock

class Artist

end  # => nil

nevermind = Album.new("Nevermind", 10, 9.99)  #
nevermind.name             # => "Nevermind"
nevermind.number_in_stock  # => 10
nevermind.sell_album       # => 9
nevermind.add_stock(7)
nevermind  # => 16
