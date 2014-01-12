require_relative 'animal-prompt'
require_relative 'client-prompt'
require_relative 'shelter-prompt'


##declaring default data
# Default client is Sammyjo!
@client_list = {}

sammyjo = Client.new("Sammyjo", "no", 24, 120)
@client_list[:sammyjo] =  sammyjo

#declaring methods here

def add_a_client


puts "enter a client name"
new_client_name = gets.chomp

puts "enter a client's number of kids (integer please)"
new_client_kids = gets.chomp

puts "enter a client's age (integer please)"
new_client_age = gets.chomp

puts "how many animals? (integer please)"
new_client_currentAnimals = gets.chomp


new_client = Client.new(new_client_name, new_client_kids, new_client_age, new_client_currentAnimals)

@client_list[new_client.name.to_sym] = new_client

puts "Client #{new_client_name} added successfully."

end



# default animals is Sally the dog...
@animal_list = {}


sally = Animal.new("Sally", 9, "Female", "Dog", ["A rubber phone", "A chewed up duck", "A little stuffed monster"])
@animal_list[sally] = sally



#### ADDING ANIMALS AND DISPLAYING ANIMALS

def add_new_animal

puts "What's the animal's name?"
animal_name = gets.chomp

puts "How old are they?"
animal_age = gets.chomp.to_i

puts "Are they male or female?"
animal_gender = gets.chomp.to_s.downcase!

puts "What species are they? Dog? Cat/etc?"
animal_species = gets.chomp.to_s

puts "Do they have any toys? What are they?"
animal_toys = gets.chomp.split(",")

new_animal = Animal.new(animal_name, animal_age, animal_gender, animal_species, animal_toys)

@animal_list[new_animal.name.to_sym] = new_animal

puts "Animal #{new_animal.name} has been added successfully."

end











#Happy_tails is the shelter we're at, that can list animals and clients.
happy_tails = Shelter.new(@animal_list, @client_list)


### EXECUTING CODE


puts "\n ~~~ ANIMAL SHELTER-O-MATIC 3000 ~~~~"
puts "\n What would you like to do today?"
puts "(Status) to see all data for HappyTails"
puts "(Adopt) to Adopt an animal"
puts "(Surrender) to Surrender an animal"
puts "(Addclient) to add a client to the database"
puts "(Addanimal) to add a new animal to the database"
puts "(Clients) to see the list of current clients"
puts "(Animals) to see the animals currently at the shelter"
main_menu_choice = gets.chomp.downcase


case main_menu_choice

	#begin watching for errors
	#begin

	#when "status" is picked from the main meny
	when "status"
		happy_tails.to_s

	
	#when "adopt" is picked from the main menu
	when "adopt"
		adopt_an_animal
		


	#when "surrender" is picked from the main menu
	when "surrender"
		surrender_an_animal
		


	#when "add client" is picked from the main menu
	when "addclient"
		add_a_client



	#when "add an animal" is picked from the main menu
	when "addanimal"
		add_new_animal



	#when "clients" is selected from the main menu
	when "clients"
		list_all_clients



	#when "animals" is selected from the main menu
	when "animals"
		list_all_animals



	#if the user's input didn't match what you meant....
	else "You didn't enter a valid menu option. Try typing the words in the brackets!"
	# rescue "Enter your option again..."
	# retry


 	#stop watching for errors
 	#end


end




