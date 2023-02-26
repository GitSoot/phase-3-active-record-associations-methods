class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    # Return the name of the genre this song belongs to
    self.genre.name
  end

  def drake_made_this
    # When this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*

    # Check if an artist named "Drake" exists in the database
    drake = Artist.find_by(name: "Drake")

    # Create a new artist named "Drake" if one doesn't exist
    if drake.nil?
      drake = Artist.create(name: "Drake")
    end

    # Assign the song's artist to Drake
    self.artist = drake
  end
end
