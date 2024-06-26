
# Méthode pour chiffrer un texte avec le chiffre de César
def caesar_cipher(text, shift)
  # Réduire le décalage pour qu'il soit compris entre 0 et 25
  shift = shift % 26

  # Mapper chaque caractère du texte pour appliquer le décalage
  encrypted_text = text.chars.map do |char|
    if char.match(/[A-Za-z]/) # Vérifier si le caractère est une lettre
      # Déterminer la base ASCII (65 pour les majuscules, 97 pour les minuscules)
      base = char.ord < 91 ? 65 : 97
      # Calculer le nouveau caractère avec décalage et replier l'alphabet
      (((char.ord - base) + shift) % 26 + base).chr
    else
      # Si ce n'est pas une lettre, ne pas le changer
      char
    end
  end

  # Rejoindre les caractères mappés pour former le texte chiffré
  encrypted_text.join
end
