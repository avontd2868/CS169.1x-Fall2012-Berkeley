def combine_anagrams(words)
	ang_groups={}
	words.each do |word|
	ang_type = word.downcase.split('').sort.join
	ang_groups[ang_type] ||= []
	ang_groups[ang_type] << word
end
	p ang_groups.values

end
