cd &(pwd)
echo ----------------------------------------
echo

if [[ $1 =~ .*/?([^\.]+)\.([^\.]+) ]]
then
  FILEPATH="${BASH_REMATCH[0]}"
  FILENAME="${BASH_REMATCH[1]}"
  EXTENSION="${BASH_REMATCH[2]}"

  if [ -e $(pwd)/run.sh ]; then
    sh $(pwd)/run.sh $FILEPATH $FILENAME $EXTENSION
  elif [ -e $(pwd)/../run.sh ]; then
    sh $(pwd)/../run.sh $FILEPATH $FILENAME $EXTENSION
  elif [ -e $(pwd)/../../run.sh ]; then
    sh $(pwd)/../../run.sh $FILEPATH $FILENAME $EXTENSION
  elif [ -e $(pwd)/../../../run.sh ]; then
    sh $(pwd)/../../../run.sh $FILEPATH $FILENAME $EXTENSION
  elif [ -e $(pwd)/../../../../run.sh ]; then
    sh $(pwd)/../../../../run.sh $FILEPATH $FILENAME $EXTENSION
  elif [ -e $(pwd)/../../../../../run.sh ]; then
    sh $(pwd)/../../../../../run.sh $FILEPATH $FILENAME $EXTENSION
  else
    echo setting didnt detected
  fi
fi
