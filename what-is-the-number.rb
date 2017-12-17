new_game = "s"

    while new_game == "s"
        puts "What is the number between 1 and 100:"

            your_number = gets.to_i

            machine_number = Random.rand(99) + 1

            again = 1

            puts machine_number

        while machine_number != your_number
            if machine_number > your_number 
                puts "The number is greater than #{your_number}"
            else
                puts "The number is less than #{your_number}"    
        end
            again += 1

            puts "Try again"

            your_number = gets.to_i

            if again > 5
                puts "Game Over This - Number than #{machine_number}"
            end
        end


        puts "Congratulations!! #{machine_number}"
        puts "Game Reload!! #{again}"

        puts "Your game start now? (s/n)"

        new_game = gets.chomp

    end

puts "Thank for fun in the game!"
