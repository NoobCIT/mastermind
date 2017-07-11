module Mastermind
  class Board
    attr_reader :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def formatted_grid
      grid.each do |row|
        puts row.map { |cell| cell.value.empty? ? "-" : cell.value }.join(" ")
      end
    end

    def guess_code
      "Guess a 4 letter long code between A-F"
    end

    def valid_code?(guess = gets.chomp.upcase)
      if guess.match(/[A-F][A-F][A-F][A-F]/)
        set_code(guess)
      else
        puts "Try again"
        valid_code?
      end
    end

    def set_code(guess)
      guess_array = guess.split("")
      grid[row][0].value = guess_array[0]
      grid[row][1].value = guess_array[1]
      grid[row][2].value = guess_array[2]
      grid[row][3].value = guess_array[3]
    end

    def check_code(code)
      code_array = code.split("")
      code_total = {
                "A" => code_array.count("A"),
                "B" => code_array.count("B"),
                "C" => code_array.count("C"),
                "D" => code_array.count("D"),
                "E" => code_array.count("E"),
                "F" => code_array.count("F")
              }
      guess_total = {
                "A" => grid[0].count("A"),
                "B" => grid[0].count("B"),
                "C" => grid[0].count("C"),
                "D" => grid[0].count("D"),
                "E" => grid[0].count("E"),
                "F" => grid[0].count("F"),
      }
      exact_match = {
                "A" => 0,
                "B" => 0,
                "C" => 0,
                "D" => 0,
                "E" => 0,
                "F" => 0,
      }
      color_match = {
                "A" => 0,
                "B" => 0,
                "C" => 0,
                "D" => 0,
                "E" => 0,
                "F" => 0,
      }


      i = 0
      while i < code_array.length
        if grid[row][i] == code_array[i]
          exact_match[grid[row][i]] +=1
          i += 1
        else
          i +=1
        end
      end
      color_match["A"] += code_array.count["A"]
      color_match["B"] += code_array.count["B"]
      color_match["C"] += code_array.count["C"]
      color_match["D"] += code_array.count["D"]
      color_match["E"] += code_array.count["E"]
      color_match["F"] += code_array.count["F"]
      diff_code_match = code_total - exact_match
      diff_guess_match = guess_total - exact_match
      j = 0

      letter_match = []
      letters = ["A", "B", "C", "D", "E", "F"]


      while j < code_total.length
        if diff_code_match[letters[j]] > 0 && diff_guess_match[letters[j]] > 0 &&
#i stopped here, combeback later
      indicator = []
      n_matches = exact_match.values.inject(0) { |sum, value| sum + value }
      indicator.push("X")*n_matches



    def set_cell


    private

    def default_grid
      Array.new(12) { Array.new(8) {Cell.new} }
    end

    def win_condition

    end

    def game_over?
      return :winner if winner?
      return :loser if loser?
    end
  end
end
