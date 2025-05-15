class StringCalculator
 def add(numbers)
  return 0 if numbers.empty?

  delimiter = /,|\n/
  if numbers.start_with?("//")
    parts = numbers.split("\n", 2)
    delimiter = Regexp.escape(parts[0][2])
    numbers = parts[1]
  end

  values = numbers.split(/#{delimiter}|,|\n/).map(&:to_i)
  negatives = values.select { |n| n < 0 }
  raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

  values.sum
 end
end
  