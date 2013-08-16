class Rcalc
  def compute(expression)
    tokens = expression.split
    if tokens.size == 1
      tokens.first.to_i
    else
      tokens.first.to_i + tokens.last.to_i
    end
  end
end
