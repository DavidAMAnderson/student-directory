def input_students
  puts "Please enter the names of your students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_first_letter(students,letter)
  students.each_with_index do |student, i|
    if student[:name][0].downcase == letter.downcase
      puts "Names begining with #{letter} are..."
      puts "#{i+1}.#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_name_length(students,length)
  students.each_with_index do |student, i|
    if student[:name].length <= length
      puts "Names shorter than #{length} characters are..."
      puts "#{i+1}.#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def interactive_menu
students = []
  loop do
  # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
  # 2. read the input and save it into a variable
    selection = gets.chomp
  # 3. do what the user has asked
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else puts "I don't know what you mean, try again"
    end
  end
end


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
interactive_menu
