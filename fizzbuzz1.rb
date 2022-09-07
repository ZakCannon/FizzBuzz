puts "Rule selection. as per softwire docs. Type numbers (out of 3, 5, 7, 11, 13, and 17) for which you want the standard
rules to apply, separated by a space"
rules = gets.chomp
rules.split(/ /)

puts "Enter range: from"
first_n = gets.chomp.to_i
puts "To"
last_n = gets.chomp.to_i
puts "Result: \n"

for n in first_n..last_n do
  printstring = []
  if n % 3 == 0 && rules.include?("3")
    printstring.push("Fizz")
  end

  if n % 13 == 0 && rules.include?("13")
    printstring.push("Fezz")
  end

  if n % 5 == 0 && rules.include?("5")
    printstring.push("Buzz")
  end

  if n % 7 == 0 && rules.include?("7")
    printstring.push("Bang")
  end

  if n % 11 == 0 && rules.include?("11")
    printstring = ["Bong"]
  end

  if n % 13 == 0 && rules.include?("13")
    if !printstring.include?("Fezz")
      printstring.unshift("Fezz")
    end
  end

  if n % 17 == 0 && rules.include?("17")
    printstring.reverse!
  end

  if printstring == []
    printstring = false
  end

  if printstring
    puts printstring.join()
  else
    puts n
  end

end
