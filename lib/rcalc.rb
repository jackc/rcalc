require 'timeout'

class Rcalc
  def compute(expression)
    sanitize! expression
    Timeout.timeout 0.1, ArgumentError do
      eval expression
    end
  rescue SyntaxError
    raise ArgumentError
  end

  private

  def sanitize! expression
    raise ArgumentError unless expression =~ /\A[ 0-9+\-*\/()]+\Z/
  end
end
