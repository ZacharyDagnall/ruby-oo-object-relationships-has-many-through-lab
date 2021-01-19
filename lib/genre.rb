class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def songs
        Song.all.select{|song| song.genre==self}
    end

    def artists
        self.songs.map(&:artist)
    end

end
