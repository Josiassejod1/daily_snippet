# frozen_string_literal: true

INVENTORY = {
  'Chips🥨' => 0.99,
  'Arizona☕️' => 0.99,
  'Candy🍫' => 0.50
}.freeze
NJ_SALES_TAX = 0.07
my_snacks = {
  'Chips🥨' => 2, 'Arizona☕️' => 1, 'Candy🍫' => 1
}
def checkout(items)
  total = 0.00

  items.each_pair do |snacks, quantity|
    total += INVENTORY[snacks] * quantity
  end

  receipt(total)
end

def receipt(total)
  puts "$#{tax_calculation(total).round(2)} is your total"
end

def tax_calculation(total)
  taxes = NJ_SALES_TAX * total
  total = (taxes + total)
end

checkout(my_snacks)
