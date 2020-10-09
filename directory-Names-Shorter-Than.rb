def input_students
  puts "Please enter the name of the students"
  puts "To finish, hit return twice"
  #creates an empty array
  students = []
  #gets the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #gets another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end
def print_header
  puts "The students of Villians Academy"
  puts "-------------"
end
def print(names)
  names.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
#nothing will happen until we call the methods
print_header
print(students)
print_footer(students)
