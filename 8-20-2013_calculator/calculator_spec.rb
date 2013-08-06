require 'minitest/spec'
require 'minitest/autorun'
require './calculator'


# Prevent #eval from being called.
module Kernel
  def eval(*args)
    raise "No cheating!"
  end
end


describe Calculator do
    
  it "returns a number if no operations are included" do
    Calculator.new("123").result.must_equal 123.0
    Calculator.new("9.8765").result.must_equal 9.8765
  end
  
  it "performs addition" do
    Calculator.new("2 + 13").result.must_equal 15.0
    Calculator.new("4 + 90 + 200").result.must_equal 294.0
  end

  it "performs subtraction" do
    Calculator.new("123 - 23").result.must_equal 100.0
    Calculator.new("1000 - 100 - 10 - 1").result.must_equal 889.0
  end
  
  it "performs multiplication" do
    Calculator.new("5 * 10").result.must_equal 50.0
    Calculator.new("1 * 2 * 3 * 4 * .5").result.must_equal 12.0
  end
  
  it "performs division" do
    Calculator.new("1000 / 3.2").result.must_equal 312.5
    Calculator.new("99 / 11 / 3").result.must_equal 3.0
  end
  
  it "obeys order of operations" do
    Calculator.new("5 + 1000 / 10").result.must_equal 105.0
    Calculator.new("6 - 2 * 5 + 20 / 2 + 4").result.must_equal 10.0
  end
  
  it "ignores whitespace" do
    Calculator.new("1+2+3-4").result.must_equal Calculator.new("1  +  2 +3 - \n4").result
  end
  
  it "obeys parentheses" do
    Calculator.new("(6 + 14) / 10").result.must_equal 2.0
    Calculator.new("(30 + 50) / (10 * 1 * 2)").result.must_equal 4.0
  end

  it "obeys nested parentheses" do
    Calculator.new("2 * (9 / (1 + 2) * 3)").result.must_equal 18.0
    Calculator.new("(5 + (3 * 2) + (4 + (6 / (1 + 1)))) / 3").result.must_equal 6.0
  end
  
  it "obeys parentheses that contain only a value" do
    Calculator.new("(32) + 4").result.must_equal 36
    Calculator.new("(21 + (7)) / 2").result.must_equal 14
  end
  
end