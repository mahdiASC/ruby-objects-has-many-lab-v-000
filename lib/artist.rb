class Artist
    attr_accessor :name, :songs

    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist=self
        @songs << song
        @@song_count += 1
    end

    def add_song_by_name(name)
        temp = Song.new(name)
        temp.artist=self
        add_song(temp)
    end

    def self.song_count
        @@song_count
    end
end
