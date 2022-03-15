require 'music_library'
require 'track'

RSpec.describe "integration" do
  it "returns a list of tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("SING", "Jon Batiste, Tori Kelly")
    track_2 = Track.new("Adorable", "Natasha Bedingfield")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track_3 = Track.new("26", "Lauv")
    track_4 = Track.new("One Night", "Griff")
    track_5 = Track.new("One Dance", "Drake, WizKid, Kyla")
    track_6 = Track.new("One Last Time", "Ariana Grande")
    library.add(track_3)
    library.add(track_4)
    library.add(track_5)
    library.add(track_6)
    expect(library.search("26")).to eq [track_3]
    expect(library.search("One")).to eq [track_4, track_5, track_6]
  end

end