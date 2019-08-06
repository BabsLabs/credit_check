# create class called CreditCard that takes in two arguments
class CreditCard

  # declare the initializationarguments
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end


  # getter method for card_number
  def card_number
    @card_number
  end

  # getter method for limit
  def limit
    @limit
  end

  # declare is_valid method to check if the card_number is a valid number
  def is_valid?

    # Splits credit card number into individual array elements
    split_card_number = @card_number.split(//)

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
      is_valid = true
    ## If it is invalid, print "The number [card number] is invalid!"
    elsif (summed_array % 10 != 0)
      is_valid = false
    else
      p "ERROR ERROR ERROR"
    end
  end

  # decalre the last_four method which returns a string of the last 4 numbers of the card
  def last_four
    @card_number.chars.last(4).join
  end

#end of CreditCard class
end
