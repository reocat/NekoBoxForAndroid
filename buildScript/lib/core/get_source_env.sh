if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="e7c37b1587c38841f4eb687249a43dab421d8eff"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="d8e0c8f4afa6a0c083447e7b985773c9cf46d21d"
fi
