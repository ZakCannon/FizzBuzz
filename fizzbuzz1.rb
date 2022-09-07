require_relative 'TypeHandles'

testf = parsestring("testing strings: ", ["a", "b", "c"])
puts testf

puts "Rule selection, as per softwire docs. Type numbers (out of 3, 5, 7, 11, 13, and 17) for which you want the standard
rules to apply, separated by a space"
default_rules = gets.chomp
default_rules.split(/ /)

n_new_rules = parseint("Designing new rules. First, enter number of new rules to generate: ")

unless n_new_rules.zero?
  new_rules = {}
  for n in 1..n_new_rules do
    target_mult = parseint("Enter multiple which you want a new output for: ")

    puts "Enter string to replace number with: "
    ret_string = gets.chomp.to_s

    string_loc = parsestring("String appears at start (s) or end (e) of final result? Note that new rules override softwire ones,
    and later rules take priority", ["e", "s"])

    new_rules[target_mult] = [ret_string, string_loc]
  end
end

first_n = parseint("Enter range: from")
last_n = parseint("To")
puts "\n Result: \n"

for n in first_n..last_n do
  printstring = []
  if n % 3 == 0 && default_rules.include?("3")
    printstring.push("Fizz")
  end

  if n % 13 == 0 && default_rules.include?("13")
    printstring.push("Fezz")
  end

  if n % 5 == 0 && default_rules.include?("5")
    printstring.push("Buzz")
  end

  if n % 7 == 0 && default_rules.include?("7")
    printstring.push("Bang")
  end

  if n % 11 == 0 && default_rules.include?("11")
    printstring = ["Bong"]
  end

  if n % 13 == 0 && default_rules.include?("13")
    if !printstring.include?("Fezz")
      printstring.unshift("Fezz")
    end
  end

  if n % 17 == 0 && default_rules.include?("17")
    printstring.reverse!
  end

  unless n_new_rules.zero?
    new_rules.each do |mult, rule|
      if n % mult == 0
        if rule.include?("e")
          printstring.push(rule[0])
        end

        if rule.include?("s")
          printstring.unshift(rule[0])
        end
      end
    end
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
