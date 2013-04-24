class Chords < Sinatra::Base
  helpers Sinatra::Cookies

  set(:cookie_options) do
    {:expires => Time.now + 3600*24*365}
  end

  get '/' do
    notes = %w(Ab A Bb B C C# D Eb E F F# G)
    voices = %w(m sus dim aug <sup>7</sup> maj<sup>7</sup> min<sup>7</sup> dim<sup>7</sup>) << ''
    inversions = ['<br>first inversion', '<br>second inversion', '']
    @chord = "#{notes.shuffle.last}#{voices.shuffle.last}#{inversions.shuffle.last}"
    haml :index
  end
end
