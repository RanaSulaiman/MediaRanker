class Work < ApplicationRecord

  def self.show_category
     @books = Work.where(category: "book")
    @albums = Work.where(category: "album")
    @movies = Work.where(category: "movie")

  end
end