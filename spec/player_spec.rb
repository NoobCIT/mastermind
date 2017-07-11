require "spec_helper"

module Mastermind
  describe Player do

    context "#initialize" do
      it "raises error for not inputting a hash" do
        expect{Player.new("X")}.to raise_error
      end

      it "returns the name of the person" do
        input = { name: "bob", code: "ABCD" }
        player = Player.new(input)
        expect(player.name).to eq "bob"
      end

      it "returns the persons code" do
        input = { name: "bob", code: "ABCD" }
        player = Player.new(input)
        expect(player.code).to eq "ABCD"
      end
    end
  end
end
