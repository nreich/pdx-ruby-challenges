# Calculator

We'll kick off our challenges with a programming classic: a simple calculator.

The `Calculator` class defined in `calculator.rb` should accept an equation as a string and output its result as a decimal. The specs defined in `calculator_spec.rb` should all pass.

**Do not use the `eval` method.** Where we're going, we don't need eval.

    Calculator.new("3.14").result        # => 3.14
    Calculator.new("12 + 30").result     # => 42.0

The basic calculator should perform addition, subtraction, multiplication, and division.

It should obey [order of operations](http://www.mathsisfun.com/operation-order-pemdas.html).

    Calculator.new("6 - 2 * 5 + 20 / 2 + 4").result     # => 10.0

**Hard mode:** The calculator should also accept parentheses.

    Calculator.new("(123)").result                    # => 123.0
    Calculator.new("2 * (9 / (1 + 2) * 3)").result    # => 18.0

Solutions will be presented and discussed at the meetup on **August 20, 2013**.
