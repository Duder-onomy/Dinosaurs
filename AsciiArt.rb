class Dinosaur

  def self.run
    #call self.get_dinosaur_files
    get_dinosaur_files
    loop do
      #call self.list
      list
      puts "Would you like more dino's? [y]es [n]o"
      input = gets.chomp
      if input == 'n'
        return puts "GoodBye"
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
    puts "What Dinosaur do you want to select? (by index)"
    input = gets.chomp.to_i
    show(@file_names[input])
  end

  def self.show(dinosaur_name)
    # #call file lookup to get dinosaurs file name
    # file_name = file_lookup(dinosaurname)
    # #call open_file to open and get results 
    dino = open_file(dinosaur_name)
    #put the on screen
    puts dino.read
  end

  def self.file_lookup(dinosaur_name)
    #match dinosaur name to dinosaur file
    return 'Dinosaur1.txt'
    
    file_names = []

    files = Dir.glob("Dinosaurs/*.txt")
    files.each_with_index do |file, index|
      file_names[index] = file
    end
  end

  def self.open_file(file_name)
    #open file, return results
    dino = File.open file_name, 'r'
  end




  #automatiacally look in folder for all dinosaurs. 
  #dinosaur.help Will list out the names of the files without extension. nut get that data recursively
  #command line args
  #Next iteration will print a speech bubble
  #Final Iteration will print any word in ASCII Chars.
  #make other beasts

end