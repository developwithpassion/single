require_relative "lib/singleton"

class Foo
  include Singleton

  attr_accessor :param

  get_instance do
    foo = new
    foo.param = "my param"
    foo
  end

  def hi
    puts "hi"
  end

  def hi2(one)
    puts @param
    puts one
  end

  def hi3(one)
    yield one if block_given?
    one
  end
end

class Bar < Foo
  attr_accessor :param2

  get_instance do
    bar = new
    bar.param = "my param 1"
    bar.param2 = "my param 2"
    bar
  end

  def hi
    puts @param2
  end

end

Foo.hi
Foo.hi2 "boo"
Foo.hi3 "foo" do |foo|
  puts foo
end

Bar.hi
Bar.hi2 "boo2"

Foo.hi2 "boo"