require File.expand_path("../../../spec_helper", __FILE__)

require 'rspec/mocks'

module Beatmap
module Site

describe Rovi do

  before(:all) do
    @rovi = Rovi.new({
      :url         => 'http://api.rovicorp.com',
      :key         => 'a26838bw349af7752zr796a7',
      :secret      => 'YGvUSeMXx8'
    })
  end

  describe "find_artist_by_name" do
    before(:all) do
      @rovi.stubs(:search).returns(
      [{"name"=>
         {"moodsUri"=>
           "http://api.rovicorp.com/data/v1/name/moods?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "influencers"=>nil,
          "headlineBio"=>
           "UK-based indie rock band with a unique dreamy sound consisting of harmonies and rippling guitar effects.",
          "birth"=>{"date"=>"1989-??-??", "place"=>"Reading, England"},
          "name"=>"Slowdive",
          "songs"=>nil,
          "musicCreditsUri"=>
           "http://api.rovicorp.com/data/v1/name/musicCredits?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "musicGenres"=>
           {"Genre"=>{"name"=>"Pop/Rock", "weight"=>10, "id"=>"MA0000002613"}},
          "isGroup"=>true,
          "contemporariesUri"=>
           "http://api.rovicorp.com/data/v1/name/contemporaries?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "influencersUri"=>
           "http://api.rovicorp.com/data/v1/name/influencers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "imagesUri"=>
           "http://api.rovicorp.com/data/v1/name/images?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "classicalBio"=>nil,
          "country"=>"England",
          "movieGenres"=>{"Genre"=>{"name"=>"Crime", "weight"=>99, "id"=>"D   653"}},
          "ids"=>
           {"amgPopId"=>"P    14294",
            "amgMovieId"=>"P585526",
            "amgClassicalId"=>"Q   281204",
            "nameId"=>"MN0000030431",
            "cosmoId"=>nil},
          "aliasesUri"=>nil,
          "compositionsUri"=>nil,
          "collaboratorWith"=>nil,
          "songsUri"=>
           "http://api.rovicorp.com/data/v1/name/songs?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "musicCredits"=>nil,
          "followers"=>nil,
          "classicalBioUri"=>nil,
          "period"=>"",
          "compositions"=>nil,
          "collaboratorWithUri"=>nil,
          "associatedWithUri"=>
           "http://api.rovicorp.com/data/v1/name/associatedwith?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "contemporaries"=>nil,
          "videos"=>nil,
          "themesUri"=>nil,
          "filmographyUri"=>
           "http://api.rovicorp.com/data/v1/name/filmography?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "filmography"=>nil,
          "primaryMedia"=>"Popular",
          "associatedWith"=>nil,
          "musicBio"=>nil,
          "followersUri"=>
           "http://api.rovicorp.com/data/v1/name/followers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "movieStylesUri"=>
           "http://api.rovicorp.com/data/v1/name/movieStyles?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "movieBio"=>nil,
          "similarsUri"=>
           "http://api.rovicorp.com/data/v1/name/similars?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "images"=>nil,
          "musicStylesUri"=>
           "http://api.rovicorp.com/data/v1/name/musicStyles?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "groupMembersUri"=>
           "http://api.rovicorp.com/data/v1/name/groupMembers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "discographyUri"=>
           "http://api.rovicorp.com/data/v1/name/discography?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "discography"=>nil,
          "aliases"=>nil,
          "moods"=>nil,
          "similars"=>nil,
          "groupMembers"=>nil,
          "movieStyles"=>nil,
          "videosUri"=>nil,
          "musicStyles"=>nil,
          "musicBioUri"=>
           "http://api.rovicorp.com/data/v1/name/musicBio?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000030431",
          "movieBioUri"=>nil,
          "memberOfUri"=>nil,
          "death"=>{"date"=>"1995-??-??", "place"=>""},
          "themes"=>nil,
          "memberOf"=>nil,
          "active"=>{"a:string"=>"1990s"}},
        "messages"=>nil,
        "id"=>"MN0000030431",
        "relevance"=>[{"name"=>1.7066656, "code"=>"Score"}],
        "type"=>"artist",
        "provider"=>"rovimusic"},
       {"name"=>
         {"moodsUri"=>
           "http://api.rovicorp.com/data/v1/name/moods?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "influencers"=>nil,
          "headlineBio"=>
           "The 1990s U.K. alternative act Seefeel combined elements of electronica and dream-pop into an intriguing mix.",
          "birth"=>{"date"=>"1992-??-??", "place"=>"London, England"},
          "name"=>"Seefeel",
          "songs"=>nil,
          "musicCreditsUri"=>
           "http://api.rovicorp.com/data/v1/name/musicCredits?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "musicGenres"=>
           {"Genre"=>{"name"=>"Pop/Rock", "weight"=>9, "id"=>"MA0000002613"}},
          "isGroup"=>true,
          "contemporariesUri"=>
           "http://api.rovicorp.com/data/v1/name/contemporaries?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "influencersUri"=>
           "http://api.rovicorp.com/data/v1/name/influencers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "imagesUri"=>
           "http://api.rovicorp.com/data/v1/name/images?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "classicalBio"=>nil,
          "country"=>"England",
          "movieGenres"=>nil,
          "ids"=>
           {"amgPopId"=>"P    45014",
            "amgMovieId"=>nil,
            "amgClassicalId"=>"Q   660744",
            "nameId"=>"MN0000621959",
            "cosmoId"=>nil},
          "aliasesUri"=>nil,
          "compositionsUri"=>nil,
          "collaboratorWith"=>nil,
          "songsUri"=>
           "http://api.rovicorp.com/data/v1/name/songs?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "musicCredits"=>nil,
          "followers"=>nil,
          "classicalBioUri"=>nil,
          "period"=>"",
          "compositions"=>nil,
          "collaboratorWithUri"=>nil,
          "associatedWithUri"=>
           "http://api.rovicorp.com/data/v1/name/associatedwith?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "contemporaries"=>nil,
          "videos"=>nil,
          "themesUri"=>
           "http://api.rovicorp.com/data/v1/name/themes?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "filmographyUri"=>nil,
          "filmography"=>nil,
          "primaryMedia"=>"Popular",
          "associatedWith"=>nil,
          "musicBio"=>nil,
          "followersUri"=>
           "http://api.rovicorp.com/data/v1/name/followers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "movieStylesUri"=>nil,
          "movieBio"=>nil,
          "similarsUri"=>
           "http://api.rovicorp.com/data/v1/name/similars?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "images"=>nil,
          "musicStylesUri"=>
           "http://api.rovicorp.com/data/v1/name/musicStyles?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "groupMembersUri"=>
           "http://api.rovicorp.com/data/v1/name/groupMembers?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "discographyUri"=>
           "http://api.rovicorp.com/data/v1/name/discography?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "discography"=>nil,
          "aliases"=>nil,
          "moods"=>nil,
          "similars"=>nil,
          "groupMembers"=>nil,
          "movieStyles"=>nil,
          "videosUri"=>nil,
          "musicStyles"=>nil,
          "musicBioUri"=>
           "http://api.rovicorp.com/data/v1/name/musicBio?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000621959",
          "movieBioUri"=>nil,
          "memberOfUri"=>nil,
          "death"=>{"date"=>"", "place"=>""},
          "themes"=>nil,
          "memberOf"=>nil,
          "active"=>{"a:string"=>"2000s"}},
        "messages"=>nil,
        "id"=>"MN0000621959",
        "relevance"=>[{"name"=>1.160198, "code"=>"Score"}],
        "type"=>"artist",
        "provider"=>"rovimusic"},
       {"name"=>
         {"moodsUri"=>nil,
          "influencers"=>nil,
          "headlineBio"=>"",
          "birth"=>{"date"=>"", "place"=>""},
          "name"=>"Slowdime",
          "songs"=>nil,
          "musicCreditsUri"=>
           "http://api.rovicorp.com/data/v1/name/musicCredits?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000276241",
          "musicGenres"=>nil,
          "isGroup"=>false,
          "contemporariesUri"=>nil,
          "influencersUri"=>nil,
          "imagesUri"=>nil,
          "classicalBio"=>nil,
          "country"=>"",
          "movieGenres"=>nil,
          "ids"=>
           {"amgPopId"=>"P  1959234",
            "amgMovieId"=>nil,
            "amgClassicalId"=>"Q   423391",
            "nameId"=>"MN0000276241",
            "cosmoId"=>nil},
          "aliasesUri"=>nil,
          "compositionsUri"=>nil,
          "collaboratorWith"=>nil,
          "songsUri"=>nil,
          "musicCredits"=>nil,
          "followers"=>nil,
          "classicalBioUri"=>nil,
          "period"=>"",
          "compositions"=>nil,
          "collaboratorWithUri"=>nil,
          "associatedWithUri"=>nil,
          "contemporaries"=>nil,
          "videos"=>nil,
          "themesUri"=>nil,
          "filmographyUri"=>nil,
          "filmography"=>nil,
          "primaryMedia"=>"Popular",
          "associatedWith"=>nil,
          "musicBio"=>nil,
          "followersUri"=>nil,
          "movieStylesUri"=>nil,
          "movieBio"=>nil,
          "similarsUri"=>nil,
          "images"=>nil,
          "musicStylesUri"=>nil,
          "groupMembersUri"=>nil,
          "discographyUri"=>nil,
          "discography"=>nil,
          "aliases"=>nil,
          "moods"=>nil,
          "similars"=>nil,
          "groupMembers"=>nil,
          "movieStyles"=>nil,
          "videosUri"=>nil,
          "musicStyles"=>nil,
          "musicBioUri"=>nil,
          "movieBioUri"=>nil,
          "memberOfUri"=>nil,
          "death"=>{"date"=>"", "place"=>""},
          "themes"=>nil,
          "memberOf"=>nil,
          "active"=>nil},
        "messages"=>nil,
        "id"=>"MN0000276241",
        "relevance"=>[{"name"=>"0.01", "code"=>"Score"}],
        "type"=>"artist",
        "provider"=>"rovimusic"},
       {"name"=>
         {"moodsUri"=>nil,
          "influencers"=>nil,
          "headlineBio"=>"",
          "birth"=>{"date"=>"", "place"=>""},
          "name"=>"Slowdrive",
          "songs"=>nil,
          "musicCreditsUri"=>
           "http://api.rovicorp.com/data/v1/name/musicCredits?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000364631",
          "musicGenres"=>
           {"Genre"=>{"name"=>"Pop/Rock", "weight"=>10, "id"=>"MA0000002613"}},
          "isGroup"=>true,
          "contemporariesUri"=>nil,
          "influencersUri"=>nil,
          "imagesUri"=>nil,
          "classicalBio"=>nil,
          "country"=>"",
          "movieGenres"=>nil,
          "ids"=>
           {"amgPopId"=>"P   720604",
            "amgMovieId"=>nil,
            "amgClassicalId"=>"Q   485625",
            "nameId"=>"MN0000364631",
            "cosmoId"=>nil},
          "aliasesUri"=>nil,
          "compositionsUri"=>nil,
          "collaboratorWith"=>nil,
          "songsUri"=>
           "http://api.rovicorp.com/data/v1/name/songs?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000364631",
          "musicCredits"=>nil,
          "followers"=>nil,
          "classicalBioUri"=>nil,
          "period"=>"",
          "compositions"=>nil,
          "collaboratorWithUri"=>nil,
          "associatedWithUri"=>nil,
          "contemporaries"=>nil,
          "videos"=>nil,
          "themesUri"=>nil,
          "filmographyUri"=>nil,
          "filmography"=>nil,
          "primaryMedia"=>"Popular",
          "associatedWith"=>nil,
          "musicBio"=>nil,
          "followersUri"=>nil,
          "movieStylesUri"=>nil,
          "movieBio"=>nil,
          "similarsUri"=>nil,
          "images"=>nil,
          "musicStylesUri"=>
           "http://api.rovicorp.com/data/v1/name/musicStyles?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000364631",
          "groupMembersUri"=>nil,
          "discographyUri"=>
           "http://api.rovicorp.com/data/v1/name/discography?format=xml&apikey=a26838bw349af7752zr796a7&nameid=MN0000364631",
          "discography"=>nil,
          "aliases"=>nil,
          "moods"=>nil,
          "similars"=>nil,
          "groupMembers"=>nil,
          "movieStyles"=>nil,
          "videosUri"=>nil,
          "musicStyles"=>nil,
          "musicBioUri"=>nil,
          "movieBioUri"=>nil,
          "memberOfUri"=>nil,
          "death"=>{"date"=>"", "place"=>""},
          "themes"=>nil,
          "memberOf"=>nil,
          "active"=>{"a:string"=>"2000s"}},
        "messages"=>nil,
        "id"=>"MN0000364631",
        "relevance"=>[{"name"=>"0.01", "code"=>"Score"}],
        "type"=>"artist",
        "provider"=>"rovimusic"}]
      )
    end

    it "should return the amg artist id and the artist name" do
      results = @rovi.find_artist_by_name("Slowdive")

      results[:amg_artist_id].should == 'P    14294'
      results[:artist].should == 'Slowdive'
    end

  end

  describe "find_album_by_name" do
    before(:all) do
      @rovi.stubs(:search).returns(
      [{"messages"=>nil,
        "id"=>"MW0002073494",
        "relevance"=>[{"name"=>2.2485619, "code"=>"Score"}],
        "album"=>
         {"releasesUri"=>
           "http://api.rovicorp.com/data/v1/album/releases?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "primaryReviewUri"=>
           "http://api.rovicorp.com/data/v1/album/primaryReview?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "moodsUri"=>
           "http://api.rovicorp.com/data/v1/album/moods?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "rating"=>8,
          "duration"=>2646,
          "flags"=>nil,
          "releases"=>nil,
          "similar"=>nil,
          "imagesUri"=>
           "http://api.rovicorp.com/data/v1/album/images?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "isPick"=>false,
          "title"=>"Hot Sauce Committee, Pt. 2",
          "ids"=>
           {"amgPopId"=>"R  2066772",
            "albumId"=>"MW0002073494",
            "amgClassicalId"=>nil},
          "classicalReviewUri"=>nil,
          "primaryArtists"=>
           {"AlbumArtist"=>{"name"=>"Beastie Boys", "id"=>"MN0000038469"}},
          "themesUri"=>
           "http://api.rovicorp.com/data/v1/album/themes?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "headlineReview"=>nil,
          "tracksUri"=>
           "http://api.rovicorp.com/data/v1/album/tracks?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "styles"=>nil,
          "primaryReview"=>nil,
          "images"=>nil,
          "originalReleaseDate"=>"1995-??-??",
          "tracks"=>nil,
          "moods"=>nil,
          "credits"=>nil,
          "creditsUri"=>
           "http://api.rovicorp.com/data/v1/album/credits?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "genres"=>[{"Genre"=>{"name"=>"Rap", "weight"=>5, "id"=>"MA0000002816"}}],
          "guestArtists"=>nil,
          "themes"=>nil,
          "stylesUri"=>
           "http://api.rovicorp.com/data/v1/album/styles?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0002073494",
          "similarUri"=>nil,
          "classicalReview"=>nil},
        "type"=>"album",
        "provider"=>"rovimusic"},
       {"messages"=>nil,
        "id"=>"MW0001771682",
        "relevance"=>[{"name"=>2.189643, "code"=>"Score"}],
        "album"=>
         {"releasesUri"=>
           "http://api.rovicorp.com/data/v1/album/releases?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0001771682",
          "primaryReviewUri"=>nil,
          "moodsUri"=>nil,
          "rating"=>"0",
          "duration"=>"0",
          "flags"=>nil,
          "releases"=>nil,
          "similar"=>nil,
          "imagesUri"=>nil,
          "isPick"=>false,
          "title"=>"Hot Sauce Committee, Pt. 1 [Not Released]",
          "ids"=>
           {"amgPopId"=>"R  1629220",
            "albumId"=>"MW0001771682",
            "amgClassicalId"=>nil},
          "classicalReviewUri"=>nil,
          "primaryArtists"=>
           {"AlbumArtist"=>{"name"=>"Beastie Boys", "id"=>"MN0000038469"}},
          "themesUri"=>nil,
          "headlineReview"=>nil,
          "tracksUri"=>nil,
          "styles"=>nil,
          "primaryReview"=>nil,
          "images"=>nil,
          "originalReleaseDate"=>"2010-??-??",
          "tracks"=>nil,
          "moods"=>nil,
          "credits"=>nil,
          "creditsUri"=>
           "http://api.rovicorp.com/data/v1/album/credits?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0001771682",
          "genres"=>[{"Genre"=>{"name"=>"Rap", "weight"=>10, "id"=>"MA0000002816"}}],
          "guestArtists"=>nil,
          "themes"=>nil,
          "stylesUri"=>
           "http://api.rovicorp.com/data/v1/album/styles?format=xml&apikey=a26838bw349af7752zr796a7&albumid=MW0001771682",
          "similarUri"=>nil,
          "classicalReview"=>nil},
        "type"=>"album",
        "provider"=>"rovimusic"}]
      )
    end

    it "should return the amg album id, album name and artist name" do
      results = @rovi.find_album_by_name('Hot Sauce Committee', 'Beastie Boys')

      results[:amg_album_id].should == 'R  2066772'
      results[:artist].should == 'Beastie Boys'
      results[:album].should == 'Hot Sauce Committee, Pt. 2'
    end

  end

end

end
end