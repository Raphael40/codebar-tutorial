
class Tutorial
    def initialize(name, type, difficulty)
        @name = name
        @type = type.to_sym
        @difficulty = difficulty.to_sym
    end

    attr_reader :difficulty
    attr_reader :type

    def is_harder_than?(input)
        difficulty_arr = [:easy, :medium, :hard, :advanced, :expert]
    
        if @type != input.type 
            "You cannot compare a #{type} with a #{input.type} tutorial"
        else 
            difficulty_arr.find_index(@difficulty) > difficulty_arr.find_index(input.difficulty)
        end
    end

end


tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

puts tutorial1.is_harder_than?(tutorial2)

puts tutorial2.is_harder_than?(tutorial1)

puts tutorial2.is_harder_than?(tutorial3)

puts tutorial3.is_harder_than?(tutorial2)