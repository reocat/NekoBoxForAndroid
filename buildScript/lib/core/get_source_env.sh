if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="70387142a28f10663b847988306ff6899fce0176"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="009c0e9ee584373d8621cbeacde0a1b63a2c5879"
fi
