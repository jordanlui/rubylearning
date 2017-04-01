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

# Ranges
some_range = 1..3
range_exclusive = 1...10
p ('k'...'z').to_a.sample(2)

age = 26
case age
when 0..19 then puts "young person"
when 20..99 then puts "you are older"
else puts "you are very old"
end

# hashes
# Also known as associated arrays
# Make a hash
# Index collections. Similar to regular arrays.
editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}

puts editor_props.length
puts editor_props['font']

editor_props["background"] = "Blue"
editor_props.each_pair do |key, value|
	puts "Key: #{key} value: #{value}"
end


# Word frequency fast example
word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom in my room"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

puts word_frequency

# Hash addressing

def adjust_color (props = {foreground:"red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end

adjust_color

adjust_color background: "yella" # newly supported in Ruby 1.9. JSON style
adjust_color ({:foreground => "green"})
adjust_color foreground: "hi"

# Hash block confusion testing
puts one:"one"