def reformat_languages(languages)
  # your code here
  reformatted = {}

  languages.each do |type, language|
      language.each do |lang, data|
        data.each do |attributes, value|
          if reformatted[lang].nil?
            reformatted[lang] = {}
          end
          reformatted[lang][:style] ||= []
          reformatted[lang][:style] << type
          if reformatted[lang][attributes].nil?
            reformatted[lang][attributes] = value
          end
        end
      end
    end
  end
  reformatted
end
