class Rcalc
  def compute(expression)
    tokens = tokenize(expression)
    if tokens.size == 1
      tokens.first.to_i
    else
      left = tokens[0].to_i
      operand = tokens[1]
      right = tokens[2].to_i

      if %w[+ - * /].include? operand
        left.send(operand, right)
      else
        raise ArgumentError
      end
    end
  end

  def tokenize(expression)
    expression.split
  end
end
