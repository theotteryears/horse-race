game_started = "Y"
horse_names = ["Trevor", "Colin", "Diego", "Alan", "Ian III"]
user_balance = 100
winning_bet = 50
losing_bet = 10

while game_started == "Y" && user_balance.positive?
  # Print welcome message and the horse names

  puts "--------------------------------"
  puts "🎺 🐎 Welcome to the race! 🐎 🎺 \n\n"

  # Get user's bet
  puts "You have #{user_balance} euro in your account.\n\n"
  puts "Please choose the horse you want to bet on: #{horse_names.join(' / ')}"
  puts "--------------------------------"
  user_horse = gets.chomp.capitalize!
  puts "--------------------------------"
  # Run the race
  winning_horse = horse_names.sample

  # Print results

  if user_horse == winning_horse
    user_balance += 50
    puts [
      "\nAmazing! #{winning_horse} just takes it at the last hurdle. Congratulations! 🎺",
      "\n🥳 #{winning_horse} was too speedy for the rest! You win! 🥳"
    ].sample
    puts "\nYou have won #{winning_bet} euro. This has been added to your total."
  else
    user_balance -= 10
    puts [
      "\nI'm sorry you picked #{user_horse}. He was too slow and lazy. 🥱",
      "\nWhat a loser! #{user_horse} is still asleep in the stable. 😴"
    ].sample
    puts "\nYou have lost #{losing_bet} euro. This has been taken from your total."
  end

  puts "Your new total is #{user_balance} euro."
  puts "--------------------------------"
  puts "\nDo you want to play again? [Y/N]"
  game_started = gets.chomp.upcase!

  if user_balance <= 0
    puts "\n😭 Sorry, you are out of cash! 😭"
    game_started = "N"
  end

  puts "\nThanks for playing! You are going home with #{user_balance} euro today. Nice work! 💶" if game_started != "Y"
end
