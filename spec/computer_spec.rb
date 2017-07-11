require "spec_helper"

module Mastermind
  describe Computer do

    context "#initialize" do
      it "returns the name" do
        bot = Computer.new
        bot.stub(:name) { "SarahTheBot" }
        expect(bot.name).to eq "SarahTheBot"
      end

      it "returns the code" do
        bot = Computer.new
        bot.stub(:code) { "ABCD" }
        expect(bot.code).to eq "ABCD"
      end
    end
  end
end
