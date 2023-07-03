if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="3805838008319a97e4495f43e10a1d4c9c1e512a"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="2cc9eb3a720da14c77299de316946b9c3fc8338a"
fi
