require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe "#initialize" do
    it 'takes two players' do
      expect(game.players).to include(player_1)
    end
  end

  describe "#player_1" do
    it "retrieves the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_1" do
    it "retrieves the first player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#turn_switcher"do
    it "switch the players' turn" do
      game.turn_switcher
      expect(game.player_1).to eq player_2
    end
  end
end
