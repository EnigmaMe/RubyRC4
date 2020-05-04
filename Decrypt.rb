require 'openssl'
require "base64"
require "colorize"
#RC4 from OpenSSL
decipher = OpenSSL::Cipher::RC4.new
#Sets decrypt mode
decipher.decrypt
#Again pls change this to match your correspondence
decipher.key = "You_Cant_Run_This_Without_Changing_This"
puts "Input your message:"
#Takes plaintext and decodes it
plaintext = Base64.decode64(gets.chomp)
#Takes the decoded and deciphers it
plain_text = decipher.update(plaintext) + decipher.final
puts "Ciphertext: #{plain_text}".red
