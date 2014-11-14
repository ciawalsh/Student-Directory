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
	print "The students that are at my cohort of Makers Academy are...\n-------------------\n"
end

def print_names(students)
n = 0
	while n < students.length
		student = students[n]
		print "#{n+1}. #{student[:name]}, #{student[:cohort]} cohort\n" 
		n += 1
	end
end

def print_footer(names)
	print "Overall, we have #{names.length} great students.\n"
end

students = input_students
print_header
print_names(students)
print_footer(students)