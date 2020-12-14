#notice the difference between .each.with_index and .each_with_index in the first and second method

def roll_call_dwarves (dwarves)
  list = []
  dwarves.each.with_index(1) do |name, index|
    list.push ("#{index}. #{name}")
  end
  puts list.each {|character| character} #the first "character" is the parameter and the second "character" is the argument
end


def summon_captain_planet (array)
  capitalized =  array.collect(&:capitalize)
    capitalized.each_with_index do |element, index|
      element[element.length] = "!" #the element.length is the actual length of each word; since Earth is 5, it would be Earth[5]. the each_with_index would place the ! at the end
  end
end


def long_planeteer_calls(long_planteer_calls)# code an argument here
  # Your code here
  long_planteer_calls.any? do |call|
    call.length > 4
end
end

def find_the_cheese(cheese)# code an argument here
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  cheese.find do |cheese|
    cheese_types.include?(cheese)
  end
end
