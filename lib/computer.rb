module Mastermind

  class Computer

    attr_reader :name, :code

    def initialize
      name_pool = ["BobTheBot", "SarahTheBot", "JoeTheBot"]
      @name = name_pool[rand(name_pool.length)]
      @code = code_generator
    end

    def code_generator
      letter_pool = ("A".."F").to_a
      i = 0
      code = []
      until i > 3
        code[i] = letter_pool[rand(letter_pool.length)]
        i += 1
      end
    end
  end
end
