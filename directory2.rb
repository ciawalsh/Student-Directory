def input_students
	print "Please enter the names of students\nTo finish, just hit return twice\n"
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => :december}
		print "Now we have #{students.length} students\n"
		name = gets.chomp
	end
	students
end

def print_header
	print "The students at my cohort of Makers Academy are...\n-------------------\n"
end

def print_names(students)
	students.each { |student| print "#{student[:name]}, #{student[:cohort]} cohort\n" }
end

def print_footer(names)
	print "Overall, we have #{names.length} great students.\n"
end

students = input_students
print_header
print_names(students)
print_footer(students)