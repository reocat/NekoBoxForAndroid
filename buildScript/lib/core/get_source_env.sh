if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="68c733fa613af85264c0d2f9f0971081edad8455"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="c571db21a11d3efaad8648439acccb1488c2796e"
fi
