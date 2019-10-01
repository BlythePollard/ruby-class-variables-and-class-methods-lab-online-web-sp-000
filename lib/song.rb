require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |key| 
     if genre_count[key] 
       genre_count[key] += 1
      else genre_count[key] = 1 
     end
     genre_count 
  end
end
  
  
  
  def self.artist_count
    artist_count = {}
    @@artists.do each |key|
    if artist_count[key]
       artist_count[key] += 1
    else 
      artist_count[key] = 1
  end
end
end
  