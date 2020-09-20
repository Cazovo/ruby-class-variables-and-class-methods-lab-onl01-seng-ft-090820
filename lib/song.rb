class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artist = []
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end  
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genre_count = {}
    @@genre.each do |genre|
      if genre_count[genre]
        genre_count += 1
      else 
        genre_count[genre] = 1
      end
    end
  end
  
  
  def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if artist_count[artist]
          artist_count += 1
        else 
          genre_count = 1
        end
      end
    end  
 end   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    