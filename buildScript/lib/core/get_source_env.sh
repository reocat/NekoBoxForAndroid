if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="f95483a6bfe3894efdf917f4ccceac8c0aec1693"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="15c4165811b97a8af4a73e4ee117836e5ce59157"
fi
type
