
class Album
  attr_reader :name, :number_in_stock, :price  # => nil

  def initialize(name, number_in_stock, price)
    @name = name                                # => "Nevermind", "In Utero"
    @number_in_stock = number_in_stock          # => 10,          10
    @price = price                              # => 9.99,        10.99
  end                                           # => :initialize

  def sell_album
    if number_in_stock == 0  # => false
      raise "Out of stock"
    end                      # => nil
    @number_in_stock -=1     # => 9
  end                        # => :sell_album

  def add_stock(amount_to_add)
    @number_in_stock + amount_to_add  # => 16
  end                                 # => :add_stock
end                                   # => :add_stock

class Artist
  attr_reader :name, :catalog  # => nil

  def initialize(name)
    @name = name        # => "Nirvana"
    @catalog = {}       # => {}
  end                   # => :initialize

  def add_album(album)
    @album = album                # => #<Album:0x007fc3fd0305e8 @name="Nevermind", @number_in_stock=9, @price=9.99>, #<Album:0x007fc3fd02a080 @name="In Utero", @number_in_stock=10, @price=10.99>
    @catalog[album.name] = album  # => #<Album:0x007fc3fd0305e8 @name="Nevermind", @number_in_stock=9, @price=9.99>, #<Album:0x007fc3fd02a080 @name="In Utero", @number_in_stock=10, @price=10.99>
  end                             # => :add_album
end                               # => :add_album

nevermind = Album.new("Nevermind", 10, 9.99)  #
nevermind.name                               # => "Nevermind"
nevermind.number_in_stock                    # => 10
nevermind.sell_album                         # => 9
nevermind.add_stock(7)                       # => 16
nevermind                                    # => #<Album:0x007fc3fd0305e8 @name="Nevermind", @number_in_stock=9, @price=9.99>
nirvana = Artist.new("Nirvana")              # => #<Artist:0x007fc3fd02af30 @name="Nirvana", @catalog={}>
nirvana.name                                 # => "Nirvana"
nirvana.add_album(nevermind)                 # => #<Album:0x007fc3fd0305e8 @name="Nevermind", @number_in_stock=9, @price=9.99>
in_utero = Album.new("In Utero", 10, 10.99)  # => #<Album:0x007fc3fd02a080 @name="In Utero", @number_in_stock=10, @price=10.99>
nirvana.add_album(in_utero)                  # => #<Album:0x007fc3fd02a080 @name="In Utero", @number_in_stock=10, @price=10.99>
nirvana.catalog                              # => {"Nevermind"=>#<Album:0x007fc3fd0305e8 @name="Nevermind", @number_in_stock=9, @price=9.99>, "In Utero"=>#<Album:0x007fc3fd02a080 @name="In Utero", @number_in_stock=10, @price=10.99>}
