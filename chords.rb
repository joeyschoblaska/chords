class Chords < Sinatra::Base
  get '/' do
    notes = %w(Ab A Bb B C C# D Eb E F F# G)
    voices = %w(maj m sus dim aug 7 maj7 min7 dim7)
    inversions = [', first inversion', ', second inversion', '']
    @chord = "#{notes.shuffle.last} #{voices.shuffle.last}#{inversions.shuffle.last}"
    haml :index
  end
end
