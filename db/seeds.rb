# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(first_name: 'Cristian', last_name: 'Funck', email: 'cf@gmail.com')
u2 = User.create(first_name: 'Pablo', last_name: 'Funck', email: 'pf@gmail.com')
u3 = User.create(first_name: 'Andrea', last_name: 'Funck', email: 'af@gmail.com')

a1 = Address.create( user: u1, phone: '123', line_1: 'line 1', line_2: 'line 2', city: 'Santiago', country: 'Chile', zip_code: '123')
a2 = Address.create( user: u2, phone: '234', line_1: 'line 1', line_2: 'line 2', city: 'Lima', country: 'Peru', zip_code: '123')
a3 = Address.create( user: u3,  phone: '345', line_1: 'line 1', line_2: 'line 2', city: 'new york', country: 'EEUU', zip_code: '123')

p1 = Product.create( brand: 'toshiba', model: 'satellite', variant: '1', price: 123, short_description: 'great phone', long_description: 'lorem ipsummmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', type_of: 'handeset');
p2 = Product.create( brand: 'toshiba', model: 'satellite', variant: '2', price: 123, short_description: 'great phone', long_description: 'lorem ipsummmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', type_of: 'suscription plan');
p3 = Product.create( brand: 'toshiba', model: 'satellite', variant: '3', price: 123, short_description: 'great phone', long_description: 'lorem ipsummmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', type_of: 'prepaid card');

o1 = Order.create( user: u1, products: [p1,p2] , billing_address_id: a1.id, shipping_address_id: a1.id)
o1 = Order.create( user: u2, products: [p2,p3] , billing_address_id: a2.id, shipping_address_id: a2.id)
o1 = Order.create( user: u3, products: [p1,p3] , billing_address_id: a3.id, shipping_address_id: a3.id)
