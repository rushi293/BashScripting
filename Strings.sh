
myVar="Hey Rishh, How are you?"

echo "Sentance length is ${#myVar} character"

echo "Uppaer Case ------ ${myVar^^}"
echo "Lower Case --------${myVar,,}"

newVar=${myVar/Rishh/Rishi}

echo "New Sentance is ${newVar}"

echo "Only name ${newVar:4:9}"
