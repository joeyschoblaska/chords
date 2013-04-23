class Chords < Sinatra::Base
  helpers Sinatra::Cookies

  set(:cookie_options) do
    {:expires => Time.now + 3600*24*365}
  end

  get '/' do
    notes = %w(A&#9837; A B&#9837; B C C&#9839; D E&#9837; E F F&#9839; G)
    voices = %w(maj min sus dim aug <sup>7</sup> maj<sup>7</sup> min<sup>7</sup> dim<sup>7</sup>)
    inversions = ['<br>first inversion', '<br>second inversion', '']
    @chord = "#{notes.shuffle.last}#{voices.shuffle.last}#{inversions.shuffle.last}"
    haml :index
  end
end
