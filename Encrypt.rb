require 'openssl'
require "base64"
require "colorize"
#Uses OpenSSL's RC4 Cipher
cipher = OpenSSL::Cipher::RC4.new
#Sets to encrypt mode
cipher.encrypt
#Please change the below before using lol - your key should be 16 bytes
cipher.key = "You_Cant_Run_This_Without_Changing_This"
#Gets user input - you can set this to something else if you don't want interactive stuff
puts "Input your plaintext:"
plaintext = gets.chomp
#Encrypts the message then makes it Base64, allowing it to be printed without breaking terminal or anything weird.
encoded = Base64.encode64(cipher_text = cipher.update(plaintext) + cipher.final)
puts "Ciphertext: #{encoded}".red
