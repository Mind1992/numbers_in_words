def numbers_in_words(number)
  words = { '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine', '10' => 'ten', '11' => 'eleven',
            '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen',
            '20' => 'twenty', '30' => 'thirty', '40' => 'forty', '50' => 'fifty', '60' => 'sixty', '70' => 'seventy', '80' => 'eighty', '90' => 'ninety'
          }
  hundreds = 0
  hundreds_math = 0
  if number.length == 3
    p hundreds_math = ((number.to_i - (number.to_i % 100)))/100
    hundreds = words[hundreds_math.to_s]
  end
  p hundreds_to_tens = number.to_i - (hundreds_math * 100)
  if hundreds_to_tens > 0
   tens = words[(hundreds_to_tens - (hundreds_to_tens % 10)).to_s]
  p singles = words[(hundreds_to_tens % 10).to_s]
  end
  if number.length == 3
    p singles = words[(hundreds_to_tens % 10).to_s]
    p hundreds + ' hundred' +' ' + tens + ' ' + singles
  elsif number.length == 2 && number[1] != "0" && !words[number]
    tens + ' '+ singles
  else
    words[number]
  end
end

numbers_in_words('100')











#   new_number = number
#   tens_digit = ''
#   last_digit = ''
#   array = []

#  puts words[number]
#   words.each do |k,v|
#     if number.length == 3
#       hundreds_digit = number.slice(0)
#       if hundreds_digit.eql?(k)
#         array << v + " hundred"
#         # hundreds = v + "hundred"
#       end
#       new_number = number.slice(-2..-1)
#     end
#   end

#  #loop through number.length
#  #if words[number]
#  #array << words number
#  #number -= number


#   words.each do |k,v|
#     if new_number.eql?(k)
#         puts number
#         array << v
#     elsif new_number.to_i > 19 && new_number.to_i <= 99 && new_number[1] != "0"
#       tens_digit = new_number.slice(0) + "0"
#       last_digit = new_number.slice(-1)
#       if tens_digit.eql?(k)
#         array.push(v)
#       elsif last_digit.eql?(k)
#         array << v
#       end
#     end
#   end
#    array.join(" ")
# end

#  numbers_in_words('525')
