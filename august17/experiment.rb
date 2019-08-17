# This is a program that stores composers
data = {
    beethoven: "Late Classical",
    mozart: "Classical",
    bach: "Baroque"
}

puts "What do you want to do?"
choice = gets.chomp 
choice = choice.downcase

case choice  

when "add"
    puts "Enter a composer"
    composer = gets.chomp 
    composer = composer.downcase
    composer = composer.to_sym
    if data[composer] == nil
        puts "What era?"
        era = gets.chomp
        era = era.downcase
        data[composer] = era
        puts "The composer has been added"
    else 
        puts "The composer is already stored"
    end 

when "update"
    puts "Enter a composer"
    composer = gets.chomp 
    composer = composer.downcase
    composer = composer.to_sym
    if data[composer] != nil
        puts "What era?"
        era = gets.chomp
        era = era.downcase
        data[composer] = era
        puts "The composer has been updated"
        data.each do |composer, era|
            puts "#{composer}: #{era}"
        end 
    else 
        puts "The composer is not on this list"
    end    
    
    when "view"
        data.each do |composer, era|
            puts "#{composer}: #{era}"
        end 
    
when "delete"
    puts "Enter a composer"
    composer = gets.chomp 
    composer = composer.downcase
    composer = composer.to_sym
    if data[composer] != nil
        data[composer].delete
        puts "The composer has been deleted"
        data.each do |composer, era|
            puts "#{composer}: #{era}"
        end 
    else 
        puts "The composer is not in this list yet"
    end 

else 
    puts "Request not processed. Please ensure your spelling is correct"
end 