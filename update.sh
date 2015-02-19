rm data/*.txt
curl http://www.metlink.org.nz/assets/Google_Transit/googletransit.zip > google-transit.zip
unzip google-transit.zip -d data/
rm google-transit.zip
