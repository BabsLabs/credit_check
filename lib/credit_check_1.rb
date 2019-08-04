card_number = "5541808923795240"

# Your Luhn Algorithm Here

# Splits credit card number into individual array elements
split_card_number = card_number.split(//)

# Converts the array items to ints
int_array = split_card_number.map(&:to_i)

# Double every other digit in array
double_ints = int_array.map.with_index{|v,i| i % 2 == 1 ? v : v * 2 } # HERE IS THE PROBLEM! ITS DOUBLING THE INTS STARTING WITH THE SECOND ONE NOT THE FIRST

# Check to see if doubled product is greater than 9
  # Iterate through array numbers
  double_ints.map! do |number|
  # Check if number is greater or equal than 10
    if number >= 10
      # Split the two digit number into two one digit numbers
      number_half = number.to_s.chars.map(&:to_i)
      # Add the numbers together
      number_half = number_half[0] + number_half[1]
      # Reassign the added sum of the two digit number back to number variable
      number = number_half
    # Leave single digit array elements alone
    else
      number = number
    end
  end

# Add together array elements
summed_array = double_ints.reduce(:+)

# Output
if (summed_array % 10 == 0)
## If it is valid, print "The number [card number] is valid!"
  p "The number #{card_number} is valid!"
## If it is invalid, print "The number [card number] is invalid!"
elsif (summed_array % 10 != 0)
  p "The number #{card_number} is invalid!"
else
  p "ERROR ERROR ERROR"
end
