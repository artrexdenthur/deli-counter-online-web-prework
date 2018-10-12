# Write your code here.

katz_deli = []

def line(cur_line)
  # shows everyone their current place in the line
  # if there is nobody in the line, it should say:
  # "The line is currently empty."
  if cur_line.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    cur_line.each_with_index do |customer, index|
      message += " #{index + 1}. #{customer}"
    end
    puts message
  end
end

def take_a_number(cur_line, new_person)
  # takes the current line and the name of 
  # the person joining the line 
  
  cur_line.push(new_person)
  
  # calls puts with the name and their position
  
  puts "Welcome, #{new_person}. You are number #{cur_line.length} in line."
  
end

def now_serving(cur_line)
  # call out (with puts) the next person in line
  # remove them from the line
  
  # if nobody in line, instead say
  # "There is nobody waiting to be served!"
  
  if cur_line.length == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{cur_line[0]}."
    cur_line.shift
  end
end

take_a_number(katz_deli, "Paul")
puts 
now_serving(katz_deli)
