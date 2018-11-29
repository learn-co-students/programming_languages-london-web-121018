require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  javascript_hash1 = {}
  javascript_hash2 = {}

  languages.each do |language_style, language_names|
    language_names.each do |name, language_types|
      language_types.each do |type, attributes|
        new_hash[name] = {type => attributes, :style => [language_style]}
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
