puts "Enter message to encrypt :"
print ">"
text = gets.chomp.to_s.downcase
puts "Enter rot value :"
print ">"
key = gets.chomp.to_i

text = text.chars

def encrypt(msg, key)
  enc_msg = []
  enc2_msg = []
  msg.each do |letter|
    if letter.ord + key  > 122
      enc_msg << letter.ord + key - 26
    else
      enc_msg << letter.ord + key
    end
  end
  enc.msg.join.downcase.chars!
  enc_msg.each do |letter|
    enc2_msg << letter.chr
  end
  puts "- Message encrypted in ROT#{key} -"
  enc2_msg.join
end
puts encrypt(text, key)
