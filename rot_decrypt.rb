puts "Enter message to decrypt :"
print ">"
text = gets.chomp.to_s.downcase
puts "Enter rot value :"
print ">"
key = gets.chomp.to_i

text = text.chars

def decrypt(msg, key)
  enc_msg = []
  enc2_msg = []
  msg.each do |letter|
    if letter.ord - key  < 97
      enc_msg << letter.ord - key + 26
    else
      enc_msg << letter.ord - key
    end
  end
  enc_msg.downcase.each do |letter|
    enc2_msg << letter.chr
  end
  puts "- Message decrypted in ROT#{key} -"
  enc2_msg.join
end
puts decrypt(text, key)
