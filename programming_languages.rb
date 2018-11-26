require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_hash = languages[:oo].merge(languages[:functional ])
 
  new_hash.keys.each do |x|
      languages[:oo].keys.each do |x|
          new_hash[x][:style] = [:oo]
      end 
      languages[:functional].keys.each do |x|
        if x == :javascript
        new_hash[x][:style] << :functional
        else 
          new_hash[x][:style] = [:functional]
        end 
      end 
   
    
  end 
  new_hash
end
