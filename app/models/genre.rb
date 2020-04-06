class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def get_first_genre
    self.genre.first 
  end

  def song_count
    self.songs.length
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.length
    # return the number of artists associated with the genre
  end

  def all_artist_names
    self.artists.map {|artist| artist.name}
    # return an array of strings containing every musician's name
  end
end
