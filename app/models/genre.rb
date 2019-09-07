class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length # return the number of songs in a genre
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artist.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.collect(&:name)
  end
end
