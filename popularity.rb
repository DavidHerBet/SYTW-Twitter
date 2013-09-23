require 'twitter'
require './configure'

cuenta = ARGV.shift || "David_HerBet"
salida = ARGV.shift.to_i
amigos = Twitter.friend_ids(cuenta)
num_amigos = amigos.count
amigos_populares = Hash.new

if salida.nil?
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
