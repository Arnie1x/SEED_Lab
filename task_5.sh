# Task 5: Error Propagation – Corrupted Cipher Text

# Encrypt the file using the AES-128 cipher
openssl enc -aes-256-ecb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_5/aes_256_ecb_cipher.txt
openssl enc -aes-256-cbc -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_5/aes_256_cbc_cipher.txt
openssl enc -aes-256-cfb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_5/aes_256_cfb_cipher.txt
openssl enc -aes-256-ofb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_5/aes_256_ofb_cipher.txt

# Use Bless to corrupt a single bit of the 55th byte in each encrypted file
bless outputs/task_5/aes_256_ecb_cipher.txt
bless outputs/task_5/aes_256_cbc_cipher.txt
bless outputs/task_5/aes_256_cfb_cipher.txt
bless outputs/task_5/aes_256_ofb_cipher.txt

# Decrypt the corrupted ciphertext file using the correct key and IV 
openssl enc -aes-256-ecb -d -pbkdf2 -in outputs/task_5/aes_256_ecb_cipher.txt -out outputs/task_5/aes_256_ecb_cipher_dec.txt
openssl enc -aes-256-cbc -d -pbkdf2 -in outputs/task_5/aes_256_cbc_cipher.txt -out outputs/task_5/aes_256_cbc_cipher_dec.txt
openssl enc -aes-256-cfb -d -pbkdf2 -in outputs/task_5/aes_256_cfb_cipher.txt -out outputs/task_5/aes_256_cfb_cipher_dec.txt
openssl enc -aes-256-ofb -d -pbkdf2 -in outputs/task_5/aes_256_ofb_cipher.txt -out outputs/task_5/aes_256_ofb_cipher_dec.txt
