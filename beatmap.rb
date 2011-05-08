require 'lib/beatmap'

beatmap = Beatmap::Lookup.new({
  :rovi => {
    :url         => 'http://api.rovicorp.com',
    :key         => 'a26838bw349af7752zr796a7',
    :secret      => 'YGvUSeMXx8'
  },

  :amazon => {
  },

  :itunes => {
    :url => 'http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsLookup'
  }
})