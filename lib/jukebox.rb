songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs) 
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end  

def play(songs)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.chomp
    if songs.include?(song_name_or_number)
    puts "Playing #{song_name_or_number}" 
    else 
    puts "Invalid input, please try again"
  end
end  

def exit_jukebox 
  puts "Goodbye"
end  

def run(jukebox) 
  help
  puts "Please enter a command:"
  user_response = gets.strip
  until user_response == "exit"
    if user_response == "list"
    list
    elsif user_response == "play"
    play
    end 
  end  
    if user_response == "exit"
    exit_jukebox
    break
    end
end   