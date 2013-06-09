require 'term/ansicolor'
class Color
  extend Term::ANSIColor
  def self.colors
    [:black,:red, :green,:yellow,:blue,:magenta,:cyan,:white].sample
  end
end


class Ui
  def self.display(string, color=Color.colors)
    puts Color.send(color), string, Color.clear, "\n"
  end
  def self.ask(question)
    puts question
    gets.chomp
  end
  def self.ask_which(names, question)
    selected_name = nil
    while selected_name.nil?
      display(question)
      names.each_with_index do |name, index|
        puts "[#{index}] - #{name}"
      end
      input = gets.chomp.to_i
      selected_name =  names.at(input)
    end
    return selected_name
  end
end
