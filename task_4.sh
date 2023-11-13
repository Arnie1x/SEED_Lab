# Task 4: Padding

# Use ECB, CBC, CFB, and OFB modes to encrypt a file (you can pick any cipher). 
# Please report which modes have paddings and which ones do not. 
# For those that do not need paddings, please explain why.

# Encryption using AES-256-CBC
openssl enc -aes-256-cbc -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_4/aes_256_cbc_cipher.txt

# Encryption using AES-256-ECB
openssl enc -aes-256-ecb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_4/aes_256_ecb_cipher.txt

# Encryption using AES-256-CFB
openssl enc -aes-256-cfb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_4/aes_256_cfb_cipher.txt

# Encryption using AES-256-OFB
openssl enc -aes-256-ofb -e -pbkdf2 -in Labsetup/Files/plaintext.txt -out outputs/task_4/aes_256_ofb_cipher.txt

# Create 3 files which contain 5 bytes, 10 bytes, and 16 bytes, respectively
echo -n "12345" > outputs/task_4/f1.txt
echo -n "1234567890" > outputs/task_4/f2.txt
echo -n "1234567890123456" > outputs/task_4/f3.txt

# Encrypt the three files using 128-bit AES with CBC mode
openssl enc -aes-128-cbc -e -pbkdf2 -in outputs/task_4/f1.txt -out outputs/task_4/f1_enc.txt
openssl enc -aes-128-cbc -e -pbkdf2 -in outputs/task_4/f2.txt -out outputs/task_4/f2_enc.txt
openssl enc -aes-128-cbc -e -pbkdf2 -in outputs/task_4/f3.txt -out outputs/task_4/f3_enc.txt

# Decrypt the three files using 128-bit AES with CBC mode
openssl enc -aes-128-cbc -d -nopad -pbkdf2 -in outputs/task_4/f1_enc.txt -out outputs/task_4/f1_dec.txt
openssl enc -aes-128-cbc -d -nopad -pbkdf2 -in outputs/task_4/f2_enc.txt -out outputs/task_4/f2_dec.txt
openssl enc -aes-128-cbc -d -nopad -pbkdf2 -in outputs/task_4/f3_enc.txt -out outputs/task_4/f3_dec.txt

echo "File 1"
hexdump -C outputs/task_4/f1_dec.txt

echo "File 2"
hexdump -C outputs/task_4/f2_dec.txt

echo "File 3"
hexdump -C outputs/task_4/f3_dec.txt
