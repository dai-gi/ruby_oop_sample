class Dog
  attr_accessor :name

  def eat
    "eating"
  end

  def move
    "moving"
  end

  def bark
    "barking"
  end

  def shake_tail
    "tail shaking"
  end
end

pochi = Dog.new
hachi = Dog.new

puts pochi.shake_tail
puts hachi.bark

pochi.name=("pochi")
hachi.name=("hachi")

puts pochi.name
puts hachi.name
