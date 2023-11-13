# Task 2: Encryption using Different Ciphers and Modes

# Encryption using AES-128-CBC
openssl enc -aes-128-cbc -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_2/aes_128_cbc_cipher.txt

# Encryption using AES-256-ECB
openssl enc -aes-256-ecb -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_2/aes_256_ecb_cipher.txt

# Encryption using AES-256-CTR
openssl enc -aes-256-ctr -e -a -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_2/aes_256_ctr_cipher.txt
