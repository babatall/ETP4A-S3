# caesar_cipher_spec.rb
require_relative '../lib/caesar_cipher'

# Décrire le comportement de la méthode caesar_cipher
describe "the caesar_cipher method" do
  # Test pour vérifier le chiffrement correct d'une chaîne avec une clé donnée
  it "should correctly encrypt a string with a given key" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  # Test pour gérer le retour au début de l'alphabet de z à a
  it "should handle wrapping from z to a" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  # Test pour maintenir la casse des lettres
  it "should maintain the case of the letters" do
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  # Test pour ignorer les caractères non alphabétiques
  it "should ignore non-letter characters" do
    expect(caesar_cipher("123!", 3)).to eq("123!")
  end
end



