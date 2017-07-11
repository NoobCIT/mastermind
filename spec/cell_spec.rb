require "spec_helper"

module Mastermind
  describe Cell do

    context "#initialize" do
      it "returns the value of cell" do
        cell = Cell.new
        expect(cell.value).to eq ""
      end

      it "returns 'A'" do
        cell = Cell.new("A")
        expect(cell.value).to eq "A"
      end
    end
    
  end
end
