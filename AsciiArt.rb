require "./Dinosaur.rb"

def run
  loop do
    list = Dinosaur.get_dinosaur_names
    selected = Ui.ask_which(list,"What Dinosaur do you want to select? (by index)")
    Ui.display(Dinosaur.new(selected).art)

    input = Ui.ask("Would you like more dinos? [y]es [n]o or a Dinosaur (by index)")
    if input == 'n'
      return Ui.display("Goodbye")
    elsif !!(input =~ /^[-+]?[0-9]+$/)
      Ui.display(Dinosaur.new(selected).art)
    end
  end

end

puts "Welcome to Dino Ascii Art!"
run
