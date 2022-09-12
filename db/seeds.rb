puts "🌱 Seeding employees..."

dan_kipruto = Employee.create(name: "Kipruto",gender: "Male",department: "Accounts")
maurine_odhiambo = Employee.create(name: "Maurine",gender: "Female",department: "IT")
steve_mwangi = Employee.create(name: "Steve",gender: "Male",department: "Store")

puts "🌱 Seeding products..."

hp_laptop = Product.create(name: "HP_Laptop",price: 40_000,category: "IT")
receipt_book = Product.create(name: "Receipt_Book",price: 5_000,category: "accounts")
maize_cereals = Product.create(name: "Maize_cereals",price: 20_000,category: "store")

puts "🌱 Seeding roles..."

update_accounts_register = Role.create(task: "Update_Accounts_Register",employee: dan_kipruto,product: receipt_book)
update_IT_register = Role.create(task: "Update_IT_Register",employee: maurine_odhiambo,product: hp_laptop)
update_stores_register = Role.create(task: "Update_Stores_Register",employee: steve_mwangi,product: maize_cereals)



puts "✅ Done seeding!"
