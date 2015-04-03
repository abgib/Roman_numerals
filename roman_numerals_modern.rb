def roman_numeral(x)
  roman_numerals = [[1,"I"],[4,"IV"],[5,"V"],
  [9,"IX"],[10,"X"],[40,"XL"],[50,"L"],[90,"XC"],
  [100,"C"],[400,"CD"],[500,"D"],[900,"CM"],[1000,"M"]]

  numerals = ""
  i = roman_numerals.length - 1
  while x > 0
    search = true
    while search == true
      y = roman_numerals[i][0]
      if x >= y
        search = false
        (x/y).times do numerals << roman_numerals[i][1] end
        x = x % y
      elsif
        i -= 1
      end
    end
  end
  numerals
end
