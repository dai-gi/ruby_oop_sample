# モジュールを定義する
module Pet
  attr_accessor :owner

  def look(arg=nil)
    if owner == arg
      "甘える"
    else
      "警戒する"
    end
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eat
    "食べる"
  end

  def move
    "自由に移動する"
  end

  def voice(arg1="ウォー", arg2="声を出す")
    "#{name}が#{arg1}と#{arg2}"
  end
end

# Animalクラスを継承
class Cat < Animal
  def voice
    super(arg1="ニャーゴ")
  end

  def scratch
    "ひっかく"
  end
end


class Dog < Animal
  include Pet

  def voice
    super(arg1="わんわん", arg2="吠える")
  end

  def shake_tail
    "尻尾を振る"
  end
end


# インスタンス化
mike = Cat.new("みけ")
pochi = Dog.new("ポチ")

# 継承した親クラスのメソッドも保持しているか確認する
puts "みけが保持しているメソッド"
p mike.methods # [:scratch, :cry, :move, :eat, :name, :taint...]

puts "ポチが保持しているメソッド"
p pochi.methods # [:bark, :shake_tail, :move, :eat, :name, :taint...]

# 継承したメソッドを実行してみる
puts "みけが保持しているメソッド実行"
puts mike.move # 自由に移動する
puts mike.scratch # ひっかく

puts "ポチが保持しているメソッド実行"
puts pochi.eat # 食べる
puts pochi.voice # ポチがわんわんと吠える

# 継承元を確認する
p Cat.superclass # Animal
p Dog.superclass # Animal

# 親クラスの継承元を確認してみる
p Animal.superclass # Object <- 継承元の最終着地点

# オーバーライドしたメソッドを実行してみる
puts mike.voice # みけがニャーゴと声を出す
puts pochi.voice # ポチがわんわんと吠える

# 組み込んだモジュールのメソッドを実行してみる
pochi.owner = "山田太郎"
puts pochi.owner # 山田太郎

puts pochi.look("山田太郎") # 甘える
puts pochi.look("田中花子") # 警戒する
puts pochi.look # 警戒する
