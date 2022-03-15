require 'track'

RSpec.describe Track do
  it "constructs" do
    track_1 = Track.new("Rumours", "Lizzo, Cardi B")
    expect(track_1.title).to eq "Rumours"
    expect(track_1.artist).to eq "Lizzo, Cardi B"
  end

  it "matches when keyword is given in title" do
    track = Track.new("One Last Time", "Ariana Grande")
    expect(track.matches?("Last")).to eq true
  end

  it "matches when keyword is given in artist" do
    track = Track.new("One Dance", "Drake, WizKid, Kyla")
    expect(track.matches?("WizKid")).to eq true
  end
end