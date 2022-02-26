class Dog
  attr_accessor :name

  # クラスインスタンス変数：クラスメソッドで共有できる特別な扱いのインスタンスメソッドになる
  @master = "john"

  # 定数を定義
  GENDER = "boy"

  def get_gender
    "The gender of my dog is a #{GENDER}"
  end

  def get_master
    @master
  end

  def set_master
    @master = "alex"
  end

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


class Animal
  def get_gender
    "The gender of this animal is a boy #{Dog::GENDER}"
  end
end


# インスタンス化
pochi = Dog.new
hachi = Dog.new

# 保持しているメソッドをそれぞれ実行する
puts pochi.shake_tail
puts hachi.bark

# nameメソッドの引数に文字列を渡す
pochi.name=("pochi")
hachi.name=("hachi")

# nameメソッドを実行
puts pochi.name # pochi
puts hachi.name # hachi

# 保持しているインスタンス変数を確認
puts pochi.instance_variables

# @master変数の値を確認
p pochi.get_master # nil

# ここで初めて@master変数に値が代入される：クラスインスタンス変数の＠master変数とは別物とゆうことがわかる
p pochi.set_master # "alex"

# 再度@master変数の値を確認
p pochi.get_master # "alex"

# 定数の値を確認
puts pochi.get_gender # The gender of my dog is a boy
# クラスで定義した定数はどこでからでも参照できる

# 別のクラスからも参照してみる
tiger = Animal.new
puts tiger.get_gender # The gender of this animal is a boy boy