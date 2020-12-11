# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(title: 'Creme de cebola',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                image_url: 'https://levedelivery.com.br/wp-content/uploads/2020/06/picanha-suina.jpg',
                price: rand(20) + 4.99,
                calories: rand(150..649),
                protein: rand(30),
                carbohidrates: rand(70),
                fibers: rand(8),
                total_fat: rand(30),
                sat_fat: rand(10),
                sodium: rand(30),
                content_list: 'Low carb, vegano, creme')

Product.create!(title: 'Marreco com arroz',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                image_url: "https://baconmockup.com/#{rand(280..299)}/#{rand(180..199)}/",
                price: rand(20) + 4.99,
                calories: rand(150..649),
                protein: rand(30),
                carbohidrates: rand(70),
                fibers: rand(8),
                total_fat: rand(30),
                sat_fat: rand(10),
                sodium: rand(30),
                content_list: 'Low carb, Ave')

Product.create!(title: 'Carne de panela',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                image_url: "https://baconmockup.com/#{rand(280..299)}/#{rand(180..199)}/",
                price: rand(20) + 4.99,
                calories: rand(150..649),
                protein: rand(30),
                carbohidrates: rand(70),
                fibers: rand(8),
                total_fat: rand(30),
                sat_fat: rand(10),
                sodium: rand(30),
                content_list: 'bovino')

Product.create!(title: 'Salmao com legumes',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                image_url: "https://baconmockup.com/#{rand(280..299)}/#{rand(180..199)}/",
                price: rand(20) + 4.99,
                calories: rand(150..649),
                protein: rand(30),
                carbohidrates: rand(70),
                fibers: rand(8),
                total_fat: rand(30),
                sat_fat: rand(10),
                sodium: rand(30),
                content_list: 'Low carb, pescado')
