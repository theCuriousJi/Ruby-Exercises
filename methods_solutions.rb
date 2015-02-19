def rps(choice)
  choices = ["Rock", "Paper", "Scissors"]

  unless choices.include?(choice)
    puts "Invalid choice!"
    return
  end

  my_choice = choices.sample

  if choice == my_choice
    return "#{my_choice}, Draw"
  end

  wins = [
    ["Rock", "Scissors"],
    ["Paper", "Rock"],
    ["Scissors", "Paper"]
  ]

  if wins.include?([choice, my_choice])
    "#{my_choice}, Win"
  else
    "#{my_choice}, Lose"
  end
end

def remix(drinks)
  alcohols = drinks.map(&:first)
  mixers = drinks.map(&:last)

  alcohols.shuffle!
  mixers.shuffle!

  [].tap do |new_drinks|
    alcohols.each_index do |i|
      new_drinks << [alcohols[i], mixers[i]]
    end
  end
  p new_drinks
end
remix([
  ["rum", "coke"],
  ["gin", "tonic"],
  ["scotch", "soda"]
  ])
