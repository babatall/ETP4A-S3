

# Méthode pour vérifier si un nombre est un multiple de 3 ou 5
def is_multiple_of_3_or_5?(n)
  # Retourne vrai si le nombre est un multiple de 3 ou de 5
  n % 3 == 0 || n % 5 == 0
end

# Méthode pour calculer la somme des multiples de 3 ou 5 en dessous d'un nombre donné
def sum_of_3_or_5_multiples(final_number)
  # Vérifie si le nombre est un entier naturel
  return "Yo ! Je ne prends que les entiers naturels. TG." unless final_number.is_a?(Integer) && final_number >= 0

  # Initialisation de la somme
  sum = 0

  # Boucle de 0 à final_number - 1 pour trouver les multiples de 3 ou 5
  (0...final_number).each do |i|
    sum += i if is_multiple_of_3_or_5?(i)
  end

  # Retourne la somme des multiples
  sum
end
