class Rcalc
  def compute(expression)
    sanitize! expression
    eval expression
  rescue SyntaxError
    raise ArgumentError
  end

  private

  def sanitize! expression
    raise ArgumentError unless expression =~ /\A[ 0-9+\-*\/]+\Z/
  end
end
