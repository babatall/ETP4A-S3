
require_relative '../lib/word_counter'

# Décrire le comportement de la méthode word_counter
describe "the word_counter method" do
  # Test pour vérifier que la méthode retourne les bons comptages pour un texte donné
  it "should return the correct word counts from the dictionary" do
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    
    # Test avec le mot "below"
    expect(word_counter("below", dictionary)).to eq({"below"=>1, "low"=>1})
    
    # Test avec une phrase plus complexe
    expect(word_counter("Howdy partner, sit down! How's it going?", dictionary)).to eq({
      "how" => 2, "howdy" => 1, "go" => 1, "going" => 1, "it" => 2, "i" => 3,
      "own" => 1, "part" => 1, "partner" => 1, "sit" => 1, "down" => 1
    })
  end
end
