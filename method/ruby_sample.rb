class Dog

  attr_reader :name, :address
  # 上記のコードは下記のメソッドが生成されている
  # def name
  #  @name
  # end

  # def address
  #  @address
  # end

  #初期化メソッド
  def initialize(arg1, arg2)
    @name = arg1
    @address = arg2
  end
end


pochi = Dog.new("pochi", "Tokyo")

# 各メソッドを実行して、インスタンス変数の値を出力する
puts pochi.name # pochi
puts pochi.address # Tokyo
