alias api="curl -s -b tmp/jar -c tmp/jar -H 'Content-Type: application/json'"
alias loginobj="api 'http://127.0.0.1:8000/resources/' -d '{ \"username\": \"lloydb\", \"password\": \"lime01\" }' > /dev/null"
