def input_students
	puts "Please enter the some info about the students..."
	puts "To continue, enter a name, or to finish, just hit return twice"
	@students = []
	name = gets.chomp
	while !name.empty? do
		puts "What's a hobby of #{name}?"
		hobby = gets.chomp.capitalize!
		puts "Where was #{name} born?"
		country_of_birth = gets.chomp.capitalize!
		@students << {:name => name, :hobby => hobby, :cob => country_of_birth, :cohort => :December}
		puts "Now we have #{@students.length} student(s). Please enter another name, or, hit return to finish."
		name = gets.chomp
	end
	@students
end

def print_header
	puts "The students at my cohort of Makers Academy are...".center(75)
	puts "------------------------".center(75)
end

def print(students)
	students.each_with_index { |student, n| puts "#{n+1}. #{student[:name]}, #{student[:cob]}, #{student[:hobby]}, #{student[:cohort]} cohort.".center(75) }
end

def print_footer(students)
	puts "------------------------".center(75)
	puts "Overall, we have #{students.length} great students.".center(75)
	puts " "
end

students = input_students
print_header
print(students)
print_footer(students)