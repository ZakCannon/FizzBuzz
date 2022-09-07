for n in 1..200 do
  printstring = ""
  if n % 3 == 0
    printstring = printstring + "Fizz"
  end

  if n % 5 == 0
    printstring = printstring + "Buzz"
  end

  if n % 7 == 0
    printstring = printstring + "Bang"
  end

  if n % 11 == 0
    printstring = "Bang"
  end

  if printstring == ""
    printstring = false
  end

  if printstring
    puts printstring
  else
    puts n
  end

end
