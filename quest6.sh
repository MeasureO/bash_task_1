cd ai_help

chmod u+x keygen.sh
chmod u+x unifier.sh

./keygen.sh

FILES=key/*

for file in $FILES
do
    if [[ ! $file =~ \.key$ ]]
    then
        rm $file
    fi
done

./unifier.sh
