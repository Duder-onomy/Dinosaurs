class Ui 
  def self.display(string)
    puts string
  end
  def self.ask(question)
    puts question
    gets.chomp
  end
  def self.ask_which(names, question)
    begin
      display (question)
      names.each_with_index do |name, index|
        puts "[#{index}] - #{name}"
      end
      input = gets.chomp.to_i
      selected_name =  names.at(input)
    end while selected_name.nil? 
    return selected_name
  end
end
