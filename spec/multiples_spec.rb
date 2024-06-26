
require_relative '../lib/multiples'

# Décrire le comportement de la méthode is_multiple_of_3_or_5?
describe "the is_multiple_of_3_or_5? method" do
  # Test pour vérifier que la méthode retourne TRUE pour les multiples de 3 ou 5
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  # Test pour vérifier que la méthode retourne FALSE pour les nombres qui ne sont pas des multiples de 3 ou 5
  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(64)).to eq(false)
  end
end

# Décrire le comportement de la méthode sum_of_3_or_5_multiples
describe "the sum_of_3_or_5_multiples method" do
  # Test pour vérifier que la méthode retourne la somme des multiples de 3 ou 5 en dessous d'un nombre donné
  it "should return the sum of multiples of 3 or 5 below a given number" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  # Test pour vérifier que la méthode retourne 0 pour les nombres inférieurs à 3
  it "should return 0 for numbers less than 3" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end

  # Test pour vérifier que la méthode retourne un message d'erreur pour les non-nombres naturels
  it "should return an error message for non-natural numbers" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
  end
end
