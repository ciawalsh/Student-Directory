students = [
	{:name => "Dr. Hannibal Lecter", :cohort => :december},
	{:name => "Darth Vader", :cohort => :december},
	{:name => "Nurse Ratched", :cohort => :december},
	{:name => "Michael Corleone", :cohort => :december},
	{:name => "Alex De Large", :cohort => :december},
	{:name => "The Alien", :cohort => :december}, 
	{:name => "Terminator", :cohort => :december}, 
	{:name => "Freddie Kruger", :cohort => :december}, 
	{:name => "The Joker", :cohort => :december}
]

def print_header
	puts "The students at my cohort of Makers Academy are..."
	puts "-------------------"
end

def print(students)
	students.each { |student| puts "#{student[:name]}, #{student[:cohort]} cohort" }
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

print_header
print(students)
print_footer(students)