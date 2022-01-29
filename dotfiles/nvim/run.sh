EXTENTION=${1##*.}
cd &(pwd)
echo run $1
echo ----------------------------------------
echo

if [ "$1" == "Dockerfile" ]; then
  docker-compose build
  docker-compose up
elif [ "$1" == "docker-compose.yml" ]; then
  docker-compose up
elif [ ${EXTENTION} == "py" ]; then
  python $1
else
  echo setting detected
fi

# python $(pwd)$1
# docker-compose build
# docker-compose up
# docker-compose restart

# exit 0


# if [ -e $(pwd)/run.sh ]; then
#   sh $(pwd)/run.sh
# elif [ -e $(pwd)/../run.sh ]; then
#   sh $(pwd)/../run.sh
# elif [ -e $(pwd)/../../run.sh ]; then
#   sh $(pwd)/../../run.sh
# elif [ -e $(pwd)/../../../run.sh ]; then
#   sh $(pwd)/../../../run.sh
# elif [ -e $(pwd)/../../../../run.sh ]; then
#   sh $(pwd)/../../../../run.sh
# elif [ -e $(pwd)/../../../../../run.sh ]; then
#   sh $(pwd)/../../../../../run.sh
# elif [ -e $(pwd)/../../../../../../run.sh ]; then
#   sh $(pwd)/../../../../../../run.sh
# else python $(pwd)$1
# fi
