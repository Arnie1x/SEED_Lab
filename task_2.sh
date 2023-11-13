# Encryption using AES-128-CBC
openssl enc -aes-128-cbc -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/aes_128_cbc_cipher.txt

# Encryption using AES-256-CBC
openssl enc -aes-256-cbc -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/aes_256_cbc_cipher.txt

# Encryption using AES-256-CTR
openssl enc -aes-256-ctr -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/aes_256_ctr_cipher.txt
