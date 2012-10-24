class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  
  def self.add_currency(currency, conversion)
	@@currencies[currency.to_s] = conversion
  end
  
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
	singular_currency = currency.to_s.gsub( /s$/, '')
	return self / @@currencies[singular_currency]
  end

end

class String
  def palindrome?
	str = self.gsub(/\W/, '').downcase
	return (str==str.reverse)
  end
end


#STILL NOT WORKING FOR NONSENSE CASES 
module Enumerable
  def palindrome? 
	str1 =self.each_entry{|v|v}
	str2= self.reverse
#self.reverse_each{|v|p v}
#self.each_entry{|v|p v}
puts str1
puts str2
 #for v in 0..self.length-1 
  # if (self.reverse_each{|v|v} != self.each_entry{|v|v})
   # return false
   #end 
  #end
#return true
      return (str1==str2)
end
end

str1= "blah blah" 
fart = [12,2,2,12]

puts fart.palindrome?
