def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    romanValues = {
        "M" => 1000,
        "CM" => 900,
        "D" => 500,
        "CD" => 400,
        "C" => 100,
        "XC" => 90,
        "L" => 50,
        "XL" => 40,
        "X" => 10,
        "IX" => 9,
        "V"=> 5,
        "IV" => 4,
        "I" => 1
    }

    romanNumerals = ["I","V","X","L","C","D","M"]
    valid = true
    individualChar = romanNumber.split(//)

    individualChar.each{ |x| 
        if (!romanNumerals.include? x)
            valid = false 
        end
    }

    if (valid)
        arabicNumber = 0
        romanValues.keys.each do |key|
            while romanNumber.start_with?(key)
                arabicNumber += romanValues[key]
                romanNumber = romanNumber.slice(key.length, romanNumber.length)
              end
            end
            return arabicNumber
    else
        raise TypeError
    end

end


def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    if arabicNumber >= 1 and arabicNumber <= 3999
        value = ''
        while arabicNumber != 0 do
            if ((arabicNumber-1000) >= 0)
                value += 'M'
                arabicNumber = arabicNumber - 1000 
            elsif((arabicNumber - 900) >= 0)
                value += 'CM'
                arabicNumber = arabicNumber - 900
            elsif((arabicNumber - 500) >= 0)
                value += 'D'
                arabicNumber = arabicNumber - 500
            elsif((arabicNumber - 400) >= 0)
                value += 'CD'
                arabicNumber = arabicNumber - 400
            elsif((arabicNumber - 100) >= 0)
                value += 'C'
                arabicNumber = arabicNumber - 100
            elsif((arabicNumber - 90) >= 0)
                value += 'XC'
                arabicNumber = arabicNumber - 90
            elsif((arabicNumber - 50) >= 0)
                value += 'L'
                arabicNumber = arabicNumber - 50
            elsif((arabicNumber - 40) >= 0)
                value += 'XL'
                arabicNumber = arabicNumber - 40
            elsif((arabicNumber - 10) >= 0)
                value += 'X'
                arabicNumber = arabicNumber - 10
            elsif((arabicNumber - 9) >= 0)
                value += 'IX'
                arabicNumber = arabicNumber - 9
            elsif((arabicNumber - 5) >= 0)
                value += 'V'
                arabicNumber = arabicNumber - 5
            elsif((arabicNumber - 4) >= 0)
                value += 'IV'
                arabicNumber = arabicNumber - 4
            elsif((arabicNumber - 1) >= 0)
                value += 'I'
                arabicNumber = arabicNumber - 1
            end
        end
            return value
    else
        raise RangeError
    end

end