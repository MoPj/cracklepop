require_relative './lib/cracklepop'
#output the data to a file
def print_to_file
	File.open('1to100incl.txt', "w") do |file|
		@result.each {|element| file.puts element }
	end
end
#create an array of results
def make_cracklepop
	cp = Cracklepop.new
	1.upto(100) {|number|
		@result <<cp.cracklepop(number)
	}
end
#print result to the console
def print_to_console
	@result.each {|element| puts element}
end
#============== MAIN ======================
@result = []
make_cracklepop
print_to_file
print_to_console