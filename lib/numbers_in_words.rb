def numbers_in_words(number)
  words = { '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine', '10' => 'ten', '11' => 'eleven',
            '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen',
            '20' => 'twenty', '30' => 'thirty', '40' => 'forty', '50' => 'fifty', '60' => 'sixty', '70' => 'seventy', '80' => 'eighty', '90' => 'ninety'
          }
  if words[number]
    return words[number]
  else
    tens = words[(number.to_i - (number.to_i % 10)).to_s]
    singles = words[(number.to_i % 10).to_s]
    return tens +' '+ singles
  end
end

puts numbers_in_words('20')











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
