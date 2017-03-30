a = 5

while a <9
	puts a
	a +=1
end

b=2
b *= 2 while b < 100
puts b

if b == 128
	puts 'confirming that b is '
	puts b
end

# Triple ===
if /sera/ === "coursera"
	puts "partial match"
end

if Integer === 21
	puts "yes this is an integer"
end

# Case expressions
# Single match case gets executed - no others
name = 'Fisher'
case name
	when /fish/i then puts 'something fishy'
	when 'Smith' then puts "your name is smith"
end

for i in 0..2
	puts i
end

location = 'Via Giuseppe, Rome,Italy'
case location
	when /rome/ then puts 'when in rome'
end