#require 'pry'
def reformat_languages(languages)
  new_hash={}
  languages.each do |type, language|
   #binding.pry
   language.each do |name, info|
      #binding.pry
      new_hash[name] = info
      new_hash[name][:style] = []
      new_hash[name][:style] << type
    end
    new_hash[:javascript][:style] << :oo
  end
  return new_hash
end
