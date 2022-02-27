class Dog

  attr_reader :name, :address
  # 上記のコードは下記のメソッドが生成されている
  # def name
  #  @name
  # end

  # def address
  #  @address
  # end

  # クラスメソッド
  def self.drink # self = Dogクラス
    "drinking"
  end

  #初期化メソッド
  def initialize(arg1, arg2)
    @name = arg1
    @address = arg2
  end

  # インスタンスメソッドの中で使用すると、インスタンスをレシーバとみなす
  def bark
    self.bowwow # pochiでインスタンス化した場合「self = pochi」になる
  end

  def bowwow
    # プライベートメソッドを実行
    "Bowwow Bowwow! and #{menacing}"
  end

  private
  def menacing
    "intimidate"
  end
end


pochi = Dog.new("pochi", "Tokyo")

# 各メソッドを実行して、インスタンス変数の値を出力する
puts pochi.name # pochi
puts pochi.address # Tokyo

# pochiインスタンスが持っているメソッドを確認する
p pochi.methods # [:address, :name, :taint, :tainted?...]

# どのクラスからインスタンス化されたか確認する
p pochi.class # Dog

# クラスメソッドを定義することによって、クラス自身にメソッドを実行することができるようになる
puts Dog.drink # drinking

# インスタンスメソッド内でselfを使用した状態で、barkメソッドを実行する
# プライベートメソッドも実行
puts pochi.bark # Bowwow Bowwow! and intimidate