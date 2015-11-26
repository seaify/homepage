
#Spree::Core::Engine.load_seed if defined?(Spree::Core)
#Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
user = User.create!(role: "admin", email: "dilin.life@gmail.com", password: "12345678", password_confirmation: "12345678")



