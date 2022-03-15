require 'music_library'

RSpec.describe MusicLibrary do
  it "returns a list of tracks" do
    library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track_3 = double :track
    expect(track_3).to receive(:matches?).with("26").and_return(true)
    track_4 = double :track
    expect(track_4).to receive(:matches?).with("26").and_return(false)
    library.add(track_3)
    library.add(track_4)
    expect(library.search("26")).to eq [track_3]
  end
end