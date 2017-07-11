require "spec_helper"

module Mastermind
  describe Board do

    context "#initialize" do
      it "initializes the board with a grid" do
        expect{ Board.new(:grid => "grid") }.to_not raise_error
      end

      it "sets the grid with 12 rows by default" do
        board = Board.new
        expect(board.grid.length).to eq(12)
      end

      it "sets the grid rows with 8 elements in each" do
        board = Board.new
        board.grid.each { |row| expect(row.length).to eq(8) }
      end
    end

    context "#grid" do
      it "sets the elements of each row correctly" do
        board = Board.new(:grid => "boo")
        expect(board.grid).to eq("boo")
      end
    end
  end
end
