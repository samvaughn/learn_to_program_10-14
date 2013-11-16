# build your own playlist

all_mp3s = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
      f.write off+"\n"
    end
end
puts 'Done!'
