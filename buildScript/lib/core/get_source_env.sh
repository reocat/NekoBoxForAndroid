if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="7744cf058d7c2abcb7512a47d7baa9552dbf67c3"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="a003e7388381251012ab01cec877872bdcdb6a28"
fi
type
