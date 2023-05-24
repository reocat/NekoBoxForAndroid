if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="e7c37b1587c38841f4eb687249a43dab421d8eff"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="05ca8a0a98ac037eb4333982a95ac042059ff7d5"
fi
