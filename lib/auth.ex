# Get your 'apiKey' and 'secretKey'
# 'apiKey' is the user's secret key provided by OKCoin, 'secretKey' is the private key used to sign your request data. To get your apiKey and SecretKey, go to Settings -> Configuration -> My API.
# Important Note: Do not reveal your 'partner' and 'secretKey' to anyone. They are as important as your password.

# Prepare for signing
# All parameters except for "sign" must be signed. The parameters must be re-ordered according to the initials of the parameter name, alphabetically.
# For example, if the request parameters are
# string[] parameters={"api_key=c821db84-6fbd-11e4-a9e3-c86000d26d7c","symbol=btc_cny","type=buy","price=680","amount=1.0"};
# The result string is:
# amount=1.0&api_key=c821db84-6fbd-11e4-a9e3-c86000d26d7c&price=680&symbol=btc_cny&type=buy

# MD5 signature
# 'secretKey' is required to generate MD5 signature. Add the 'secret_Key' to the above string to generate the final string to be signed, such as: amount=1.0&api_key=c821db84-6fbd-11e4-a9e3-c86000d26d7c&price=680&symbol=btc_cny&type=buy&secret_key=secretKey
# Note: '&secret_key=secretKey' is a must. Use 32 bit MD5 encryption function to sign the string. Pass the encrypted string to 'sign' parameter. Letters of the encrypted string must be in upper case.

# SNI support
# SNI(Server Name Indication) is designed to improve the SSL/TLS networking protocol and is applied in SSLv3/TLSv1. SNI enables a client to indicate which hostname it is attempting to connect to at the start of the SSL handshaking (specifically when a client sends ClientHello msg). This allows the server to switch to the right domain and return the corresponding certificate. SNI must be supported in order to use the API, otherwise, connection may fail.
