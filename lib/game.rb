module Mastermind

  class Game
    attr_reader :board, :player, :computer

    def initialize(player, computer, board = Board.new)
      @board = board
      @player = player
      @row = 0
      @computer = computer
    end






    def play
      while true
        board.formatted_grid
        puts ""
        guess_code
        valid_code?
        board.set_code
        board.check_code(computer.code)
      end
    end
  end
end
