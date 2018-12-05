require 'pry'

def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  language_attributes = {}
  languages.each do |style, languagedetails|
    languagedetails.each do |language, attribute|
      attribute.each do |attributes, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
      language_attributes[language][:style]  ||= []
      language_attributes[language][:style] << style
        if language_attributes[language][attributes].nil?
        language_attributes[language][attributes] = str_value
        end
      end
    end
  end
language_attributes
end


reformat_languages(languages)
