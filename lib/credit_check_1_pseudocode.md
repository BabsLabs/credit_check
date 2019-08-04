# Pseudocode credit_check_1.rb
## Iteration 1 - The Luhn Algorithm

To do:
- Take credit_card number and split each number up to be examined
  - convert string to array of ints
- Double every other digit
  - If sum is greater than 9
    - use the sum of the products digits
- Add all updated numbers together
- See if the result is divisible by 10
  - if divisible then a valid card_number
  - if not divisible by 10 then invalid card_number
