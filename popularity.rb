require 'twitter'
require './configure'

cuenta = ARGV[0].to_s || "David_HerBet"
salida = ARGV[1].to_i
amigos = Twitter.friend_ids(cuenta)
num_amigos = amigos.count
amigos_populares = Hash.new

if salida.zero?
  num_amigos.times do |n|
    amigo = Twitter.user(amigos.ids[n])
    if (amigo.protected.to_s != "true")
      amigos_populares[amigo.name] = amigo.followers_count
    end
  end
else
  salida.times do |n|
    amigo = Twitter.user(amigos.ids[n])
    if (amigo.protected.to_s != "true")
      amigos_populares[amigo.name] = amigo.followers_count
    end
  end
end

amigos_populares.sort_by {|amigo, followers| -followers}.each {|a, f| puts "#{a}, #{f}"}
