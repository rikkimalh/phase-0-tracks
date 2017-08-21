require 'sqlite3'

db = SQLite3::Database.new('guests.db')
db.results_as_hash = true

create_table_guests = <<-SQL
	CREATE TABLE IF NOT EXISTS guests(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		table_number INT,
		plus_one VARCHAR(255)
		)
SQL

db.execute(create_table_guests)

names = Array.new
loop do

	def add_guest(db, name, table_number, plus_one)
		db.execute("INSERT into guests (name, table_number, plus_one) VALUES (?, ?, ?)", [name, table_number, plus_one])
	end

		puts "Enter your guests name."
		
		guest_name = gets.chomp
		puts "Enter their table number"

		guest_table_number = gets.chomp
		puts "Will they have a plus one?"
		
		guest_plus_one = gets.chomp
		
		puts "Thank you. The user has been added. Would you like to add another? (type yes or no)"
			continue = gets.chomp	
	add_guest.each do |name, table_number, plus_one| names << name
	if 
		continue == "no"
		break
		
		end 
	end 
end 

p names

#db = SQLite3::Database.new('tables.db')
#db.results_as_hash = true
#create_table_table = <<-SQL
#	CREATE TABLE IF NOT EXISTS tables(
#		id INTEGER PRIMARY KEY,
#		table_number,
#		FOREIGN KEY(table_number) REFERENCES guests(table_number)
#		)
#SQL##

#db.execute(create_table_table)##
#
#
#

#def add_table(db, table_number)
#	db.execute("INSERT into tables (table_number) VALUES (?)", [table_number])
#end ##

#puts "Please enter a table number"##

#table_number = gets.chomp.to_i
#add_table(db, table_number)##
#
#
#
#

