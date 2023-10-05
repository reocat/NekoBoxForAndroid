if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="363f419392f51d8f70d8ecf6af2622a771cdcae3"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="a2f5bc882d9c43926effd878cb0b17ddcf44937c"
fi
type
