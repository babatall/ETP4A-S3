

require_relative '../lib/day_trader'

# Décrire le comportement de la méthode day_trader
describe "the day_trader method" do
  # Test pour vérifier les meilleurs jours d'achat et de vente pour un profit maximal
  it "should return the best days to buy and sell for maximum profit" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  # Test pour vérifier si aucun profit ne peut être réalisé
  it "should return [0, 0] if no profit can be made" do
    expect(day_trader([10, 9, 8, 7, 6])).to eq([0, 0])
  end
end
