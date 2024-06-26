def word_counter(text, dictionary)
    word_counts = Hash.new(0)
    text.downcase.split(/[^a-z]/).each do |word|
      dictionary.each do |dict_word|
        if word.include?(dict_word)
          word_counts[dict_word] += 1
        end
      end
    end
    word_counts
  end
  

  def word_counter(text, dictionary)
    # Initialise un hash pour stocker les comptes de chaque mot, par défaut 0
    word_counts = Hash.new(0)
  
    # Convertit le texte en minuscules et le divise en mots en utilisant une regex pour exclure tout sauf les lettres
    words = text.downcase.split(/[^a-z]/)
  
    # Pour chaque mot dans le texte
    words.each do |word|
      # Pour chaque mot dans le dictionnaire
      dictionary.each do |dict_word|
        # Si le mot contient le mot du dictionnaire
        if word.include?(dict_word)
          # Incrémente le compteur pour ce mot du dictionnaire
          word_counts[dict_word] += 1
        end
      end
    end
  
    # Retourne le hash des comptes de mots
    word_counts
  end
  