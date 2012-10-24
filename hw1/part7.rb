class CartesianProduct
  include Enumerable
  def initialize(seq1, seq2) 
	@seq1 = seq1
	@seq2 = seq2
end

def each
	return to_enum unless block_given?
	@seq1.each do |a|
		@seq2.each {|b| yield [a,b]}
end
end


end
