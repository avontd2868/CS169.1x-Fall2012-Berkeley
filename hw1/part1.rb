#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
	newstr = str.gsub(/\W/, '').downcase #gets rid of punctuation and converts all characters to lowercase
	if newstr == newstr.reverse
		true
	else
		false
	end
end

def count_words(str)
#try to include the \b regexp for 'word boundary'
	newstr = str.downcase.split(/[^a-zA-Z]/) 
	numof = Hash.new(0)
newstr.each {|word| numof[word] += 1}
numof.delete_if {|word, count| word ==""}
end


