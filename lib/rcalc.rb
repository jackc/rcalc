class Rcalc
  def compute(expression)
    eval expression
  rescue SyntaxError
    raise ArgumentError
  end
end
