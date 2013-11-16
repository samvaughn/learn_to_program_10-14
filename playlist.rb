# build your own playlist

def shuffle arr

  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end

      arr = new_arr
    end

    shuf
end

all_mp3s = shuffle(Dir['**/*.mp3'])

File.open 'playlist.mp3', 'w' do |f|
  all_mp3s.each do |mp3|
      f.write mp3+"\n"
    end
end

puts 'Done!'
