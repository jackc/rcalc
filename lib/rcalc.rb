class Rcalc
  def compute(expression)
    tokens = expression.split
    if tokens.size == 1
      tokens.first.to_i
    else
      left, operand, right = tokens
      case operand
      when '+'
        left.to_i + right.to_i
      when '-'
        left.to_i - right.to_i
      when '*'
        left.to_i * right.to_i
      end
    end
  end
end
