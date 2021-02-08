def badge_maker(name)
     "Hello, my name is #{name}."
end

speaker_lineup = ["Edsger", "Ada", "Charles", "Alan" , "Grace" , "Linus" , "Matz" ]

def batch_badge_creator (speaker_lineup)
    speaker_lineup.collect {|speaker| badge_maker(speaker)}
end

def assign_rooms(speaker_lineup)
    speaker_lineup.each_with_index.map {|speaker , index| "Hello, #{speaker}! You'll be assigned to room #{index +1}!"}
end

def printer(speaker_lineup)
    batch_badge_creator(speaker_lineup).each{|badge| puts badge}
    assign_rooms(speaker_lineup).each{|rooms| puts rooms}
end

