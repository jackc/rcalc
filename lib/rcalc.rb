class Rcalc
  def compute(expression)
    tokens = expression.split
    if tokens.size == 1
      tokens.first.to_i
    else
      left = tokens[0].to_i
      operand = tokens[1]
      right = tokens[2].to_i

      if %w[+ - * /].include? operand
        left.send(operand, right)
      end
    end
  end
end
