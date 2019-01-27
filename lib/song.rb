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
        
      end
    end
  end
  
end