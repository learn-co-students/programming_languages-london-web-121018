def reformat_languages(languages)
  # your code here
new_hash = {}
languages.each do |style, language_hash|
  language_hash.each do |language, type|
    type.each do |type_key, type_value|
    if new_hash.has_key?(language)
      new_hash[language][:style] << style 
  else 
      new_hash[language] = {:type => type_value, :style => [] << style}
end 
end 
end
end 
new_hash
end


             