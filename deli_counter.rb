# Write your code here.

#an array of ticket numbers
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

def take_a_number(cur_line)
  # takes the current line and the name of 
  # the person joining the line 
  
  if cur_line.length == 0
    cur_line.push(1)
  else
    cur_line.push(cur_line[-1] + 1)
  end
  
  # calls puts with the name and their position
  
  puts "Welcome, you are ticket number #{cur_line[-1]} and you are number #{cur_line.length} in line."
  
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
take_a_number(katz_deli, "Cernan")
puts katz_deli
now_serving(katz_deli)
