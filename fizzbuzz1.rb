for n in 1..300 do
  printstring = []
  if n % 3 == 0
    printstring.push("Fizz")
  end

  if n % 13 == 0
    printstring.push("Fezz")
  end

  if n % 5 == 0
    printstring.push("Buzz")
  end

  if n % 7 == 0
    printstring.push("Bang")
  end

  if n % 11 == 0
    printstring = ["Bong"]
  end

  if n % 13 == 0
    if !printstring.include?("Fezz")
      printstring.unshift("Fezz")
    end
  end

  if n % 17 == 0
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
