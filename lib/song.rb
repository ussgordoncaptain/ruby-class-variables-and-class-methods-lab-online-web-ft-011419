class Song
  @@song_count = 0 
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genres
  end
  attr_accessor :name, :artist, :genre
  def self.genre_count
    genre_hash = {}
    @@genres.each do |gen|
      if genre_hash.has_key?(gen)
        genre_hash[gen] += 1
      else 
        genre_hash[gen] = 1
      end
    end
    return genre_hash
  end
  def self.artist_count 
    artist_arr = []
    @@artists.each do |art|
      if !artist_arr.include?(art)
        artist_arr << art
      end
    end
    return artist_arr
  end
end