    keytool -genkey -keyalg RSA -alias selfsigned -keystore selfsigned.jks -validity 365 -keysize 4096;
    keytool -export -alias selfsigned -keystore selfsigned.jks -rfc -file selfsigned.cer;
    keytool -list -v -keystore selfsigned.jks;
    keytool -importkeystore -srckeystore selfsigned.jks -destkeystore selfsigned.p12 -deststoretype pkcs12
