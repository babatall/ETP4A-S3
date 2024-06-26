
  
  def day_trader(prices)
    # Initialisation des variables pour stocker le profit maximum et les meilleurs jours
    max_profit = 0
    best_days = [0, 0]
  
    # Boucle sur chaque prix d'achat avec son index
    prices.each_with_index do |buy_price, buy_day|
      # Boucle sur chaque prix de vente possible après le jour d'achat
      prices[buy_day + 1..-1].each_with_index do |sell_price, index|
        # Calcul du profit pour ce jour d'achat et de vente
        profit = sell_price - buy_price
        # Si ce profit est supérieur au profit maximum actuel, mettez à jour max_profit et best_days
        if profit > max_profit
          max_profit = profit
          best_days = [buy_day, buy_day + 1 + index]
        end
      end
    end
    # Retourner les meilleurs jours d'achat et de vente
    best_days
  end
  