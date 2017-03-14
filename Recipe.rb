class Recipe
    attr_accessor :name, :instructions, :ingredients

    def initialize(name, instructions, ingredients)
      @name = name
      @instructions = instructions
      @ingredients = ingredients
    end

    def summary
      puts "# #{('=' * @name.length) + ('=' * 6)} #"
      puts "#Recipe: #{name}#"
      puts "# #{('=' * @name.length) + ('=' * 6)} #"
      puts ""
      puts "Ingredients"
      puts "-----------"
      @ingredients.each do |ingredient|
        puts "#{ingredient}"
      end
      puts ""
      puts "Directions"
      puts "-----------"
      count = 0
      @instructions.each do |instruction|
        count += 1
        puts "#{count}. #{instruction}"
      end
      return
    end
end
