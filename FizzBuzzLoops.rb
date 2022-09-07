def apply_cust_rules(number, rule_hash, target_array)
  rule_hash.each do |mult, rule|
    if number % mult == 0
      if rule.include?("e")
        target_array.push(rule[0])
      end

      if rule.include?("s")
        target_array.unshift(rule[0])
      end
    end
  end
end

def clean_output(print_array, number)
  if print_array == []
    return number
  end

  if print_array
    return print_array.join()
  end
end

def fizz_buzz_loop(start, fin, default_rules, cust_rules, n_cust_rules)
  for n in start..fin do
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

    unless n_cust_rules.zero?
      apply_cust_rules(n, cust_rules, printstring)
    end

    printstring = clean_output(printstring, n)
    if printstring
      puts printstring
    else
      puts n
    end
  end
end