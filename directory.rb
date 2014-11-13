students = [
	"Dr. Hannibal Lecter",
	"Darth Vader",
	"Nurse Ratched",
	"Michael Corleone",
	"Alex De Large",
	"The Alien",
	"Terminator",
	"Freddie Kruger",
	"The Joker"
]

def print_header
	puts "The students at my cohort of Makers Academy are..."
	puts "-------------------"
end

def print(names)
	names.each { |name| puts name }
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

print_header
print(students)
print_footer(students)