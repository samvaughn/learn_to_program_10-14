def music_shuffle filenames
  filenames = filenames.sort
  len       = filenames.length

    2.times do 
      l_idx = 0
      r_idx = len/2
      shuf  = []

      while shuf.length < len
        if shuf.length%2 == 0
          shuf.push(filenames[r_idx])
          r_idx = r_idx + 1
       else
          shuf.push(filenames[l_idx])
          l_idx = l_idx + 1
        end
      end

      filenames = shuf
    end

    arr = []
    cut = rand(len)
    idx = 0

    while idx < len
      arr.push(filenames[(idx+cut)%len])
      idx = idx + 1
    end

  arr
end

songs = ['localhost/Users/sbychan/Music/iTunes/iTunes%20Media/Music/The%20Corries/Lads%20Among%20the%20Heather/15%20Wild%20Rover.m4a' ,
'localhost/Users/sbychan/Music/iTunes/iTunes%20Media/Music/The%20Corries/The%20Compact%20Collection/09%20The%20Massacre%20of%20Glencoe.m4a',
'localhost/Users/sbychan/Music/iTunes/iTunes%20Media/Music/The%20Corries/The%20Compact%20Collection/05%20The%20Roses%20of%20Prince%20Charlie.m4a',
'localhost/Users/sbychan/Music/iTunes/iTunes%20Media/Music/The%20Corries/The%20Compact%20Collection/04%20The%20Portree%20Kid.m4a',
'localhost/Users/sbychan/Music/iTunes/iTunes%20Media/Music/The%20Corries/The%20Compact%20Collection/07%20The%20Lammas%20Tide.m4a']

puts(music_shuffle(songs))
