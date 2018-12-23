require 'pry'


def reformat_languages(languages)
  new_hash = {}
  languages.each do|type, hash|
    hash.each do|lang, hash2|
      new_hash[lang] = hash2
      new_hash[lang][:style] = []

      if languages[:functional].include? lang and languages[:oo].include? lang
        new_hash[lang][:style] << :oo && new_hash[lang][:style] << :functional
      elsif languages[:oo].include? lang
        new_hash[lang][:style] << :oo
      else
        new_hash[lang][:style] << :functional
      end

    end
  end

  new_hash
end


p"end"
