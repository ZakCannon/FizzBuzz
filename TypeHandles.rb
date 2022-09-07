def parseint(prompt)
  puts prompt
  result_dirty = gets.chomp

  begin
    if Integer(result_dirty)
      result_clean = result_dirty.to_i
      return result_clean
    end
  rescue ArgumentError
    puts "Not valid integer, try again: "
    parseint(prompt)
  end
end

def parsestring(prompt, valid_answers)
  puts prompt
  result_dirty = gets.chomp

  if valid_answers.include?(result_dirty)
    return result_dirty
  end

  puts "Not a valid choice, try again:"
  parsestring(prompt, valid_answers)

end