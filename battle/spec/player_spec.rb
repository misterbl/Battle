require 'Player'

describe Player do
  subject(:player_1) {described_class.new("Bob")}
  subject(:player_2) {described_class.new("MEATBALL THE DESTROYER")}
  # let(:game) {double :game}
  it 'returns a name' do
    expect(player_1.name).to eq "Bob"
  end

  describe ("#reduce_hp") do
    it 'deducts 10hp' do
      expect{player_2.reduce_hp}.to change{player_2.hp}.by(-10)
    end
  end
end
