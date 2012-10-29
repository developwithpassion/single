require_relative "../lib/single"

class Foo
  include Single

  def hi
    puts "hi from foo"
  end

  def hi2(one)
    puts one
  end

  def hi3(one)
    yield one if block_given?
    one
  end
end

class Bar < Foo

  def hi
    puts "hi from bar"
  end

end

Foo.hi
Foo.hi2 "boo"
Foo.hi3 "foo" do |foo|
  puts foo
end

Bar.hi
Bar.hi2 "boo2"

Foo.hi

Foo.hi2 "boo"