

# require gems
require 'sqlite3'

# SQL db
DB = SQLite3::Database.new("albums.db")
DB.results_as_hash = true


# table init

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS albums(
    id INTEGER PRIMARY KEY,
    album_name VARCHAR(255),
    artist VARCHAR(255),
    is_out INT
  )
SQL

DB.execute(create_table_cmd)

## Method - SQL insert for album

def album_datainsert(album_name, artist, is_out)
  DB.execute("INSERT INTO albums (album_name, artist, is_out) VALUES (?, ?, ?)", [album_name, artist, is_out])
end

## Method - album_input
# Include prompts to ask for each info, store in variable, input variables to album_datainsert after confirmation

def album_input
  puts "What is the artist name?"
  artist = gets.chomp
  puts "What's the album by #{artist}?"
  album_name = gets.chomp
  puts "Is #{album_name} currently released? (y/n)"
  answer = gets.chomp
    if answer.downcase == "y"
      cr = 1
      cr_string = "currently released"
    else
      cr = 0
      cr_string = "not currently released"
    end
  puts "Storing the album #{album_name} by #{artist}, which is #{cr_string}."
  album_datainsert(album_name, artist, cr)
end


table_query = DB.execute("SELECT * FROM albums")

## UI - Greet user, ask if user would like to list albums on list, update an album, add an album, or exit.

# While a variable is untrue, loops through those options. Typing 'Exit' will provide a departing message and exit the program.

# base variables
exit = false
greeting = <<-OPTIONS
Welcome to the album tracker. Do you want to 'add', 'list', or 'exit'?
OPTIONS

# loop

while exit == false
  puts greeting
  choice = gets.chomp
  if choice.downcase == "list"
    table_query.each do |album|
      if album['is_out'] != 0
        puts "#{album['album_name']} by #{album['artist']} is out."
      else
        puts "#{album['album_name']} by #{album['artist']} isn't out yet."
      end
    end
    # puts "Want to update an item? (y/n)"
    # update_item = gets.chomp
  elsif choice.downcase == "add"
    album_input
  elsif choice.downcase == "exit"
    puts "Thanks for using the album tracker."
    exit = true
  else
    puts "Sorry, could not compute."
  end
end