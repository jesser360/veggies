# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all
Batch.delete_all
Farmer.delete_all
Customer.delete_all

f1 = Farmer.create({name:'Billy Joe',email:'billy@yahoo.com',location:94609})
f2 = Farmer.create({name:'Farmer John',email:'John@yahoo.com',location:70001})

b1 = Batch.create({name:'Zuchinni',desc:'yummy in the tummy zuchini',amount:20,price:3, farmer:f1})
b2 = Batch.create({name:'Carrots',desc:'crunchy and fresh yumz',amount:10,price:2, farmer:f2})
b2 = Batch.create({name:'Cabbage',desc:'that good green stuff',amount:50,price:1, farmer:f2})
b2 = Batch.create({name:'Brussel Sprouts',desc:'yucky but healthy',amount:15,price:8, farmer:f2})

c1 = Customer.create({name:'Sally Sue',email:'sally@yahoo.com',location:94618})
c2 = Customer.create({name:'Timmy boy',email:'timmy@yahoo.com',location:70003})

Order.create({quantity:12,total_price:36, customer:c1, batch:b1})
Order.create({quantity:5,total_price:10, customer:c2, batch:b2})
