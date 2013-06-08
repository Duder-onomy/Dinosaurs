require "./Ui.rb"

class Dinosaur

attr_reader :art

  def self.get_dinosaurs
    #makes array of all dinosaur files
    if @file_names.nil?
      @file_names = {}
      files = Dir.glob("Dinosaurs/*.txt")
      files.each do |file|
        name = file.gsub(/^Dinosaurs\//, "").gsub(/.txt$/, "")
        @file_names[name] = file
      end
    end
    return @file_names
  end

  def self.get_dinosaur_names
    get_dinosaurs.keys
  end

  def initialize(dinosaur_type)
    file = File.open Dinosaur.get_dinosaurs[dinosaur_type], 'r'
    @art = file.read
    return @art
  end
 
  #Go into settings, change dino color
  #command line args
  #When Loading File, print a speech bubble Dino With Hello and current time.
  #Final Iteration will print any word in ASCII Chars.
  #make other beasts
end

