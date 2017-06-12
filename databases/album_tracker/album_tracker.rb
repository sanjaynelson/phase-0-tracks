

# require gems
require 'sqlite3'

# SQL db
db = SQLite3::Database.new("albums.db")
db.results_as_hash = true


# table init

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS albums(
    id INTEGER PRIMARY KEY,
    album_name VARCHAR(255),
    artist VARCHAR(255)
    currently_released INT
  )
SQL
db.execute(create_table_cmd)

## Method - SQL insert for album

def album_datainsert(album_name, artist, currently_released)
  db.execute("INSERT INTO albums (album_name, artist, currently_released) VALUES (?, ?, ?)", [album_name, artist, currently_released])
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
    if answer == "y"
      currently_released = 1
      cr_string = "currently released"
    else
      currently_released = 0
      cr_string = "not currently released"
    end
  puts "Storing the album #{album_name} by #{artist}, which is #{cr_string}."
  album_datainsert(album_name, artist, currently_released)
end


table_query = <<-SQL
  SELECT * FROM albums
SQL


## UI - Greet user, ask if user would like to list albums on list, update an album, add an album, or exit.

# While a variable is untrue, loops through those options. Typing 'Exit' will provide a departing message and exit the program.


table_query.each do |album|
  if album[currently_released] != 0
    puts "#{album['album_name']} by #{album['artist']} is out."
  else
    puts "#{album['album_name']} by #{album['artist']} isn't out yet."
end