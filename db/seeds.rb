Restaurant.find_or_initialize_by_name('Australia').tap do |restaurant|
  restaurant.booth_order = 1
  restaurant.year_opened = 1997
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Shrimp on the Barbie").tap do |dish|
    dish.name = "Shrimp on the Barbie"
    dish.description = "With Pepper Berry Citrus Glaze"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Grilled Lamb Chop").tap do |dish|
    dish.name = "Grilled Lamb Chop"
    dish.description = "With Potato-Goat Cheese Salad and Shiraz Reduction"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lamington").tap do |dish|
    dish.name = dish.short_name
    dish.description = 'Chocolate and coconut covered yellow cake.'
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Penfods Charnonnay").tap do |dish|
    dish.name = "Penfods 'Koonunga Hill Charnonnay"
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 2.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Greg Norman Shiraz").tap do |dish|
    dish.name = "Greg Norman Estates Shiraz, Limestone Coast"
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lindeman's 'Bin 90' Moscato").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 2.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Penfolds Cabernet Sauvignon").tap do |dish|
    dish.name = "Penfolds \"Thomas Hyland\" Cabernet Sauvignon"
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Brazil').tap do |restaurant|
  restaurant.booth_order = 2
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Feijoada").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Brazil's National Dish, a black bean and pork stew"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Seared Mahi Mahi").tap do |dish|
    dish.name = "Seared Mahi Mahi"
    dish.description = "Mahi Mahi with Steamed Rice, Hearts of Palm and Coconut-Lime Sauce"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Caipirinha Cocktail").tap do |dish|
    dish.name = "LeBlon Frozen Caipirinha cocktail"
    dish.category = 'Alcohol'
    dish.vegetarian = true
    dish.price = 7.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Argentina').tap do |restaurant|
  restaurant.booth_order = 3
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Beef Skewer").tap do |dish|
    dish.name = "Grilled Beef Skewer"
    dish.description = "With Chimichurri Sauce and Boniato Puree"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.00
  end.save!  
  restaurant.dishes.find_or_initialize_by_short_name("Beef Empanada").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Terrazas Reserva Chardonnay").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Terrazas Reserva Cabernet Sauvignon").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Terrazas Reserva Torrontes").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Terrazas Reserva Malbec").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Caribbean').tap do |restaurant|
  restaurant.booth_order = 4
  restaurant.year_opened = 2011
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Ropa Vieja").tap do |dish|
    dish.name = "Ropa Vieja with white rice"
    dish.category = 'Food'
    dish.description = 'Slowly braised beef'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Jerk Chicken").tap do |dish|
    dish.name = "Jerk Spiced Chicken Drumstick with Mango Salsa"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Coconut Mojito").tap do |dish|
    dish.name = "Frozen Rock Coconut Mojito"
    dish.category = 'Alcohol'
    dish.price = 7.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Dragon Berry Colada").tap do |dish|
    dish.name = "Frozen Dragon Berry Colada"
    dish.category = 'Alcohol'
    dish.price = 7.25
  end.save!
end

Restaurant.find_or_initialize_by_name('Mexico').tap do |restaurant|
  restaurant.booth_order = 5
  restaurant.year_opened = 1996
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Rib Eye Tacos").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Shrimp Tacos").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Flan").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Dos Equis Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 8.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lime Strawberry Margarita").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Lime Strawberry Margarita on the rocks"
    dish.category = 'Alcohol'
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("L.A. Cetto Chardonnay").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 4.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("L.A. Cetto Petite Sirah").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 4.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Scandinavia').tap do |restaurant|
  restaurant.booth_order = 6
  restaurant.year_opened = 2011
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Taste of Scandinavia").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Shrimp Salad, Cured Salmon and Herring"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.00
  end.save!  
  restaurant.dishes.find_or_initialize_by_short_name("Swedish Meatballs").tap do |dish|
    dish.name = "Swedish Meatballs with Lingonberries"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Rice Pudding with Berries").tap do |dish|
    dish.name = 'Rice pudding with Driscoll\'s Only The Finest Berries'
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Carlsberg Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
  end.save!  
  restaurant.dishes.find_or_initialize_by_short_name("Xante").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 5.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Xante Sunshine").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 7.25
  end.save!
end

Restaurant.find_or_initialize_by_name('China').tap do |restaurant|
  restaurant.booth_order = 7
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Black Pepper Shrimp").tap do |dish|
    dish.name = "Black Pepper Shrimp with Sichuan Noodles"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pork Pot Stickers").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Barbecue Chicken").tap do |dish|
    dish.name = "Xinjiang Barbecue Chicken Stick"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Caramel-Ginger Ice Cream").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Ting Tao Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Dragon\'s Hallow Chardonnay").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Wine Cooler").tap do |dish|
    dish.name = "Green Tea Plum Wine Cooler"
    dish.category = 'Wine'
    dish.price = 7.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Happy Lychee").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 2.50
  end.save!
end

Restaurant.find_or_initialize_by_name('South Korea').tap do |restaurant|
  restaurant.booth_order = 8
  restaurant.year_opened = 2010
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pork Lettuce Wraps").tap do |dish|
    dish.name = "Lettuce Wraps with Roast Pork and Kimchi Slaw"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Buolgogi BBQ Beef").tap do |dish|
    dish.name = "Buolgogi BBQ Beef with Steamed Rice and Kimchi"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Myung Jak Bokbunjajoo").tap do |dish|
    dish.name = "Myung Jak Bokbunjajoo (Raspberry Wine)"
    dish.category = 'Wine'
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Charm Soon Soju").tap do |dish|
    dish.name = "Charm Soon Soju"
    dish.category = 'Wine'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Bek Se Ju").tap do |dish|
    dish.name = "Bek Se Ju"
    dish.description = "Herbal Rice Wine"
    dish.category = 'Wine'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
end

Restaurant.find_or_initialize_by_name('South Africa').tap do |restaurant|
  restaurant.booth_order = 9
  restaurant.year_opened = 1997
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Filet of Beef").tap do |dish|
    dish.name = "Seared Filet of Beef"
    dish.description = "Seared Filet of Beef with Smashed Sweet Potatoes and Braai Sauce"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Bunny Chow").tap do |dish|
    dish.name = "Bunny Chow"
    dish.description = "Vegetable Curry in a Bread Loaf"
    dish.category = 'Food'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("La Capra Chardonnay").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("La Capra Sauvignon Blanc").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("La Capra Pinotage").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("La Capra Shiraz").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
end

Restaurant.find_or_initialize_by_name('Cheese').tap do |restaurant|
  restaurant.booth_order = 10
  restaurant.year_opened = 2010
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Cheese Fondue").tap do |dish|
    dish.name = "Cheese Fondue with Sourdough Bread"
    dish.category = 'Food'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Artian Cheese Selection").tap do |dish|
    dish.name = "Artian Cheese Selection with Sweet Grass Dairy Thomasville Tome"
    dish.category = 'Food'
    dish.vegetarian = true
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sauvignon Blanc").tap do |dish|
    dish.name = "Sterling Reserve Sauvignon Blanc Vitners Collection"
    dish.category = 'Wine'
    dish.price = 2.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Riesling").tap do |dish|
    dish.name = "Sterling Riesling Vitners Collection"
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pinot Noir").tap do |dish|
    dish.name = "Sterling Pinot Noir Vitners Collection"
    dish.category = 'Wine'
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Meritage").tap do |dish|
    dish.name = "Sterling Meritage Vitners Collection"
    dish.category = 'Wine'
    dish.price = 2.50
  end.save!
end

Restaurant.find_or_initialize_by_name("Brewer's Collection").tap do |restaurant|
  restaurant.booth_order = 11
  restaurant.year_opened = 2003
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Radeberger Pilsner").tap do |dish|
    dish.name = "Radeberger Pilsner (German Pilsner)"
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Altenmunster Oktoberfest").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Altenmunster Dunkel").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Hovels").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Schofferhofer Weizen").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Braufactum Indra").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Braufactum Roog").tap do |dish|
    dish.name = "Braufactum Roog (Smoked Wheat Bier)"
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sion Kolsch").tap do |dish|
    dish.name = "Sion Kolsch"
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
end

Restaurant.find_or_initialize_by_name('Germany').tap do |restaurant|
  restaurant.booth_order = 12
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Goulash Suppe").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sausage Pretzel").tap do |dish|
    dish.name = "Nuernberger Sausage in a Pretzel Roll"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Apple Strudel").tap do |dish|
    dish.name = "Apple Strudel Featuring Werther\'s Original Karamel Sauce and Vanilla Sauce"
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Spatlese").tap do |dish|
    dish.name = "Selbach-Oster Estate Spatlese"
    dish.category = 'Wine'
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Riesling Kabinett").tap do |dish|
    dish.name = "Selbach JH Riesling Kabinett"
    dish.category = 'Wine'
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Riesling QbA").tap do |dish|
    dish.name = "Selbach JH Riesling QbA"
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Riesling").tap do |dish|
    dish.name = "Selbach JH Riesling Classic"
    dish.category = 'Wine'
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Radeberger Pilsner").tap do |dish|
    dish.name = "Radeberger Pilsner (German Pilsner)"
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Altenmunster Dunkel").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beed'
    dish.price = 6.25
  end.save!
end

Restaurant.find_or_initialize_by_name('Poland').tap do |restaurant|
  restaurant.booth_order = 13
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Kielbasa and Pierogie").tap do |dish|
    dish.name = "Kielbasa and Potato Pierogie"
    dish.description = "Kielbasa and Potato Pierogie with Carmelized Onions and Sour Cream"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Golabki").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Pork stuffed cabbage"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Strawberry Chiller").tap do |dish|
    dish.name = "Belvedere Strawberry Chiller"
    dish.category = 'Alcohol'
    dish.price = 9.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Italy').tap do |restaurant|
  restaurant.booth_order = 14
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Baked Ravioli").tap do |dish|
    dish.name = "Ravioli Di Formaggio all'Emiliana"
    dish.description = "Baked cheese ravioli with creamy beef Bolognese sauce, Parmesan cheese and melted mozzarella"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Shrimp Pasta").tap do |dish|
    dish.name = "Cappellini con Gamberi Piccanti"
    dish.description = "Cappellini pasta with spicy shrimp"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Cannoli").tap do |dish|
    dish.name = "Cannoli al Cioccolato"
    dish.description = "Chocolate-covered cannoli shell filled with sweet ricotta cheese, chocolate and candied fruit"
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Primavera Smoothie").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Fantinel Prosecco").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Placido Chianti").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Placido Pinot Grigio").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moretti Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Fife & Drum').tap do |restaurant|
  restaurant.booth_order = 15
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Jim Beam Frozen Lemonade").tap do |dish|
    dish.name = "Frozen Red Stag Lemonade by Jim Beam"
    dish.category = 'Alcohol'
    dish.price = 6.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Hops & Barley').tap do |restaurant|
  restaurant.booth_order = 16
  restaurant.year_opened = 2005
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Lobster Claw").tap do |dish|
    dish.name = "Lobster Claw Cuddler"
    dish.description = "Linda Bean\'s Lobster Claw Cuddler with Drawn Butter"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 6.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lobster Roll").tap do |dish|
    dish.name = "Perfect Maine Lobster Roll"
    dish.description = "Linda Bean\'s Perfect Maine Lobster Roll"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 7.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pumpkin Mousse").tap do |dish|
    dish.name = "Pumpkin Mousse"
    dish.description = "Pumpkin Mousse with Ocean Spray Craisins Brand Dreid Cranberries and Orange Sauce"
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 1.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Boston Lager").tap do |dish|
    dish.name = "Samuel Adams Boston Lager"
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Octoberfest").tap do |dish|
    dish.name = "Samuel Adams Octoberfest"
    dish.category = 'Beer'
    dish.price = 5.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Cherry Wheat").tap do |dish|
    dish.name = "Samuel Adams Cherry Wheat"
    dish.category = 'Beer'
    dish.price = 5.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Boston Ale").tap do |dish|
    dish.name = "Boston Ale"
    dish.description = "16th Anniversary Festival Beer - Boston Ale"
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Samuel Adams Light").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Cream Stout").tap do |dish|
    dish.name = "Samuel Adams Cream Stout"
    dish.category = 'Beer'
    dish.price = 5.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Latitude 48 IPA").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Blackberry Withier").tap do |dish|
    dish.name = "Samuel Adams Blackberry Withier"
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Singapore').tap do |restaurant|
  restaurant.booth_order = 17
  restaurant.year_opened = 2005
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Shrimp Cake").tap do |dish|
    dish.name = "Shrimp Cake"
    dish.description = "Shrimp Cake on a Sugarcane Skewer with Singapore Noodles"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Beef Rendang").tap do |dish|
    dish.name = "Beef Rendang with Jasmine Rice"
    dish.description = "Coconut-braised beef with jasmine rice"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Singapore Sling").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 7.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Tiger Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Japan').tap do |restaurant|
  restaurant.booth_order = 18
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Spicy Tuna Roll").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("California Sushi Roll").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Tuna and Salmon").tap do |dish|
    dish.name = "Tuna and Salmon Sensation"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pork Kakuni").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Kirin Draft Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 8.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Itami Sake").tap do |dish|
    dish.name = "Sake: Itami Onigoroshi"
    dish.category = 'Alcohol'
    dish.price = 6.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Junmai Sake").tap do |dish|
    dish.name = "Sake: Junmai Ginjo Masumi"
    dish.category = 'Alcohol'
    dish.price = 7.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Tokyo Sunset").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 8.00
  end.save!
end

Restaurant.find_or_initialize_by_name('New Zealand').tap do |restaurant|
  restaurant.booth_order = 19
  restaurant.year_opened = 1997
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sea Scallop").tap do |dish|
    dish.name = "Seared Sea Scallop"
    dish.description = "Seared Sea Scallop with Kumara-Red Curry Puree and Apple Radish Salad"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lamb Slider").tap do |dish|
    dish.name = "Lamb Slider with Tomato Chutney"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Mohua Sauvignon Blanc").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Reisling").tap do |dish|
    dish.name = "Mohua Central Otago Riesling"
    dish.category = 'Wine'
    dish.price = 3.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Whitehaven Sauvignon Blanc").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Whitehaven Pinot Noir").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Morocco').tap do |restaurant|
  restaurant.booth_order = 20
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Kefta Pocket").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Ground seasoned beef in a pita pocket"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Chicken Roll").tap do |dish|
    dish.name = "Harissa Chicken Roll"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Baklava").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 2.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Casa Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Ksar White").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sangria").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 4.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Royale Mimosa").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 6.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Portugal').tap do |restaurant|
  restaurant.booth_order = 21
  restaurant.year_opened = 2011
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Calamari Salad").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Calamari salad with Fennel, smoked paprika and olive oil"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Linguica Sausage").tap do |dish|
    dish.name = "Linguica Sausage with onions, peppers and olives"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pastel de Nata").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.vegetarian = false
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moscato").tap do |dish|
    dish.name = "Fonseca JM Periquita Moscato"
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Periquira").tap do |dish|
    dish.name = "Fonseca JM Periquira"
    dish.category = 'Wine'
    dish.price = 2.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Port").tap do |dish|
    dish.name = "Fonseca Bin 27 Port"
    dish.category = 'Wine'
    dish.price = 4.25
  end.save!
end

Restaurant.find_or_initialize_by_name('Belgium').tap do |restaurant|
  restaurant.booth_order = 22
  restaurant.year_opened = 2010
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Steamed Mussels").tap do |dish|
    dish.name = "Steamed Mussles with Roasted Garlic Cream and a Baguette"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Belgium Waffle").tap do |dish|
    dish.name = "Belgium Waffle with Berry Compote and Whippted Cream"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Chocolate Truffles").tap do |dish|
    dish.name = "Guylian Belgian Chocolate Seashell Truffles"
    dish.category = 'Desert'
    dish.vegetarian = true
    dish.price = 1.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Stella Artois").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Hoegaarten").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Leffe").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Iced Coffee").tap do |dish|
    dish.name = "Godiva Chocolate Iced Coffee"
    dish.category = 'Non-Alcoholic Drink'
    dish.price = 6.25
  end.save!
end

Restaurant.find_or_initialize_by_name('France').tap do |restaurant|
  restaurant.booth_order = 23
  restaurant.year_opened = 1996
  restaurant.save!
  restaurant.dishes.find_or_initialize_by_short_name("Escargots").tap do |dish|
    dish.name = "Escargots"
    dish.description = "Persillage en Brioche"
    dish.category = 'Food'
    dish.price = 4.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Coq au Vin").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Coq au Vin sur gratin de macaroni (Red Wine braised Chicken, Mushrooms, Pearl Onions, and Macaroni Gratin)"
    dish.category = 'Food'
    dish.price = 4.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Creme Brulee").tap do |dish|
    dish.name = "Creme Brulee au Chocolate au Lait"
    dish.category = 'Dessert'
    dish.price = 3.95
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Chardonnay").tap do |dish|
    dish.name = "Chardonnay, Bouchard Aine & Fils"
    dish.category = 'Wine'
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Bordeaux").tap do |dish|
    dish.name = "Merlot, Chateau de Beauregard-Ducourt, Bordeaux"
    dish.category = 'Wine'
    dish.price = 5.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sparkling Pomegranate Kir").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 6.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Parisien Cosmo Slush").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Ciroc Vodka, Grand Marnier, Cranberry Juice"
    dish.category = 'Alcohol'
    dish.price = 8.50
  end.save!
end

Restaurant.find_or_initialize_by_name('Ireland').tap do |restaurant|
  restaurant.booth_order = 24
  restaurant.year_opened = 2001
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Fisherman's Pie").tap do |dish|
    dish.name = "Lobster and Scallop Fisherman's Pie"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Kerrygold Cheese Selection").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Kerrygold Cheese Selection (Aged-Irish Cheddar, Dubliner and Ivernia Cheese) with apple chutney and brown bread"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 5.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lava Cake").tap do |dish|
    dish.name = "Warm Chocolate Lava Cake"
    dish.description = "Warm Chocolate Lava Cake with Baileys Irish Cream Ganache"
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Guinness Draught").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.vegetarian = false
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Honey Meade Wine").tap do |dish|
    dish.name = "Bunratty Honey Meade Wine"
    dish.category = 'Wine'
    dish.price = 4.75
  end.save!
end

Restaurant.find_or_initialize_by_name('Canada').tap do |restaurant|
  restaurant.booth_order = 25
  restaurant.year_opened = 1996
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Cheddar Cheese Soup").tap do |dish|
    dish.name = "Canadian Cheddar Cheese Soup"
    dish.category = 'Food'
    dish.vegetarian = true # ?
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Glazed Salmon").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Maple and Moosehead-Beer Glazed Salmon with Barley Salad"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Chicken Chipotle Sausage").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Chicken Chipotle Sausage with Sweet Corn Polenta"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moosehead Beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Neige Sparking").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 5.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Neige FB").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 5.75
  end.save!
end

Restaurant.find_or_initialize_by_name('Greece').tap do |restaurant|
  restaurant.booth_order = 26
  restaurant.year_opened = 1996
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Greek Salad").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Greek Salad with Pita Bread"
    dish.category = 'Food'
    dish.vegetarian = true
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Griddled Greek Cheese").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Griddled Greek Cheese with Pistachios and Honey"
    dish.category = 'Dessert'
    dish.vegetarian = true
    dish.price = 3.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Chicken Souvlaki").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Chicken Souvlaki with Tzatziki"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 4.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Parfait with Strawberries").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Dannon Greek Yogurt Parfait with Strawberries"
    dish.category = 'Food'
    dish.vegetarian = true
    dish.price = 2.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Skouras St George").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 2.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moschofilero").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Boutari Greek (White) 'Moschofilero'"
    dish.category = 'Wine'
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Boutari Kretikos White").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 3.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Desserts & Champagne').tap do |restaurant|
  restaurant.booth_order = 27
  restaurant.year_opened = 2000
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Macadamia Mousse").tap do |dish|
    dish.name = dish.short_name
    dish.description = "White Chocolate Macadamia Mousse with Dark Chocolate Pearls"
    dish.category = 'Dessert'
    dish.price = 1.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Lemon Chiffon").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.price = 1.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Tres Leches Verrine").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Dessert'
    dish.price = 1.50
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moet & Chandon Ice Imperial").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 12.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moet & Chandon Rose Imperial").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 12.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moet & Chandon Nectar Imperial").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 11.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Moet & Chandon Imperial").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Wine'
    dish.price = 10.75
  end.save!
end

Restaurant.find_or_initialize_by_name('Hawaii').tap do |restaurant|
  restaurant.booth_order = 28
  restaurant.year_opened = 2011
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Kalua Pork Slider").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Kalua Pork Slider with Sweet and Sour Dole Pineapple Chutney and Spicy Mayonnaise"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Tuna Poke").tap do |dish|
    dish.name = dish.short_name
    dish.description = "Tuna Poke with Seaweed Salad and Lotus Root Chips"
    dish.category = 'Food'
    dish.vegetarian = false
    dish.price = 3.75
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Seven Tiki Mai Tai").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Alcohol'
    dish.price = 7.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Kona Longboard").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Pipeline beer").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
end

Restaurant.find_or_initialize_by_name('Craft Beers').tap do |restaurant|
  restaurant.booth_order = 29
  restaurant.year_opened = 2010
  restaurant.save!
  
  restaurant.dishes.find_or_initialize_by_short_name("Full Sail IPA").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Sierra Nevada").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 6.25
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Abita - Purple Haze").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Red Hook Pilsner").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Blue Moon").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Leinenkugal").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Key West Sunset Ale").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
  restaurant.dishes.find_or_initialize_by_short_name("Widmer Hefeweizen").tap do |dish|
    dish.name = dish.short_name
    dish.category = 'Beer'
    dish.price = 5.00
  end.save!
end

