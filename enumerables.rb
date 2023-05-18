[
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
]


def get_names(spicy_foods)
  names = []
  spicy_foods.each do |food|
    names << food[:name]
  end
  names
end

spicy_foods = [
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
]

names = get_names(spicy_foods)
puts names

def spiciest_foods(spicy_foods)
  spiciest = spicy_foods.select { |food| food[:heat_level] > 5 }
  spiciest
end

spiciest = spiciest_foods(spicy_foods)
puts spiciest

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = '🌶' * food[:heat_level]  # Repeat the chili pepper emoji based on the heat level
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end
print_spicy_foods(spicy_foods)

def sort_by_heat(spicy_foods)
  sorted_foods = spicy_foods.sort_by { |food| food[:heat_level] }
  sorted_foods
end
sorted_foods = sort_by_heat(spicy_foods)
puts sorted_foods

def print_spiciest_foods(spicy_foods)
  spiciest = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest)
end

def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = '🌶' * food[:heat_level]  # Repeat the chili pepper emoji based on the heat level
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

print_spiciest_foods(spicy_foods)

def average_heat_level(spicy_foods)
  total_heat_level = spicy_foods.reduce(0) { |sum, food| sum + food[:heat_level] }
  average = total_heat_level.to_f / spicy_foods.length
  average.round
end
average = average_heat_level(spicy_foods)
puts average