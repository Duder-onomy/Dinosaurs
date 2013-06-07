class Dinosaur

  def self.run
    puts "Welcome to Dino Ascii Art!"
    #call self.get_dinosaur_files
    get_dinosaur_files

    loop do
      #call self.list
      list

      puts "What Dinosaur do you want to select? (by index)"
      input = gets.chomp.to_i
      show(@file_names[input])

      puts "Would you like more dinos? [y]es [n]o"
      input = gets.chomp
      if input == 'n'
        return puts "Goodbye"
      end
    end
  end

  def self.get_dinosaur_files
    @file_names = []
    files = Dir.glob("Dinosaurs/*.txt")
    files.each_with_index do |file, index|
      @file_names[index] = file
    end
  end

  def self.list
    #prints out all dinosaur names
    @file_names.each_with_index do |file_name, index|
      file_name = file_name.gsub(/^Dinosaurs\//, "").gsub(/.txt$/, "")
      puts "[#{index}] - #{file_name}" 
    end
  end

  def self.show(dinosaur_name)
    #call open_file to open and get results 
    puts open_file(dinosaur_name).read
  end

  def self.open_file(file_name)
    #open file, return results
    File.open file_name, 'r'
  end



  #command line args
  #When Loading File, print a speech bubble Dino With Hello and current time.
  #Final Iteration will print any word in ASCII Chars.
  #make other beasts
end

Dinosaur.run