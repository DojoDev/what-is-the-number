new_game = "s"

while new_game =="s"



guess = %w{ruby php javascript java python}
language_sort = guess.sample
size_language = language_sort.size
puts "What my Skills?"
parcial_language = []
size_language.times do
    parcial_language << " _ "
end

puts parcial_language.join

fim = false

while fim == false
    puts "Escolha uma letra!"
    your_guess = gets.chomp

    i = 0

    language_sort.each_char do |guess_text|
        if parcial_language[i] == ' _ '
            if guess_text == your_guess
                 parcial_language[i] = your_guess
            end
        end

        i += 1
    end

    if parcial_language.join.count(" _ ")>0
        fim = false
        puts parcial_language.join
    else
        fim = true
    end
end

puts "Parabens era #{parcial_language.join}!"
puts "Deseja jogar novamente? (s/n)"
new_game = gets.chomp
end

puts "Thank You for play in the game!"



