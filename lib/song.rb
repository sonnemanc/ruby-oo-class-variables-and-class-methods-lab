class Song

    attr_accessor   :name, :artist, :genre

        @@count = 0
        @@artists = []
        @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        count_genres = {}
        @@genres.each do |type|
            count_genres[type] = @@genres.count(type)
        end
        count_genres
        
    end

    def self.artist_count
        count_artists = {}
        @@artists.each do |singer|
            count_artists[singer] = @@artists.count(singer)
        end
        count_artists
    end
end