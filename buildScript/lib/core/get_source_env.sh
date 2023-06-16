if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="9425043181283da4b50c95954b9827c400d625e8"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="842dd0f0aed44b2b54d85d15cc350cc21b196cd6"
fi
