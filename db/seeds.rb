# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
vesna = User.create(first_name: "Vesna", last_name: "Vucinic", email: "vesna@vesna.com", password: "vv")

dish1 = Dish.create(name: "Pizza Franco Manca 4", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR71sWsTaJ3XlktEDmZKb1ENOhhpwXwRgyraQ&usqp=CAU", description: "Roasted cured ham, British mozzarella, ricotta & wild mushrooms, [little tomato]", price: 7.95 )
dish2 =  Dish.create(name: "Pizza Franco Manca 2", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE6rqLfhPBujBeNGRT2JbGxYaOI7BXIr1mbQ&usqp=CAU", description: "Organic tomato, British mozzarella & basil", price: 6.80)
dish3 = Dish.create(name: "Pizza Franco Manca 6", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi2-prod.getsurrey.co.uk%2Fincoming%2Farticle14660457.ece%2FALTERNATES%2Fs1200b%2FFranco-Manca.jpg&imgrefurl=https%3A%2F%2Fwww.getsurrey.co.uk%2Fwhats-on%2Ffood-drink-news%2Fbest-restaurants-pizza-surrey-according-17470272&tbnid=TUpXnlNL7LqkJM&vet=12ahUKEwjg3IbfvOntAhXVgM4BHex0CacQMygMegUIARDBAQ..i&docid=25xb52_NWXS3wM&w=1200&h=900&q=franco%20manca%20pizza%206&ved=2ahUKEwjg3IbfvOntAhXVgM4BHex0CacQMygMegUIARDBAQ", description: "Organic tomato, cured chorizo [Natural & Iberico] & British mozzarella", price: 8.00)

order1 = Order.create(data: DateTime.new(2020,11,25), user_id: vesna.id, status: "finished", total: 7.95)
order2 =Order.create(data: DateTime.new(2020,12,22), user_id: vesna.id, status: "submitted", total: 6.80)

