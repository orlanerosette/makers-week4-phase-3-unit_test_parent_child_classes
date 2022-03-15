class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def title
    return @title
  end

  def artist
    return @artist
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    if @title.include?(keyword) || @artist.include?(keyword)
      return true
    else
      return false
    end
    # return true if @title.include? keyword
    # return true if @artist.include? keyword
    # return false
  end
end
