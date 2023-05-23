if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="e7c37b1587c38841f4eb687249a43dab421d8eff"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="5513327205d8506ac5cd4002b784ca87c6444de1"
fi
