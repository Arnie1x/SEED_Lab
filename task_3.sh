# File Encryption using CBC
openssl enc -aes-128-cbc -e -a -pbkdf2 -in Labsetup/Files/pic_original.bmp -out outputs/pic_cbc.bmp

# File Encryption using ECB
openssl enc -aes-128-ecb -e -a -pbkdf2 -in Labsetup/Files/pic_original.bmp -out outputs/pic_ecb.bmp

# Fix the header for the CBC encrypted output
head -c 54 Labsetup/Files/pic_original.bmp > header
tail -c +55 outputs/pic_cbc.bmp > body
cat header body > outputs/pic_result_cbc.bmp

# Fix the header for the ECB encrypted output
head -c 54 Labsetup/Files/pic_original.bmp > header
tail -c +55 outputs/pic_ecb.bmp > body
cat header body > outputs/pic_result_ecb.bmp

rm header
rm body

