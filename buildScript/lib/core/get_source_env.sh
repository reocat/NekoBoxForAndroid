if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="9400fd007ad5a19b5892a7c42aae0951e1163747"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="2cc9eb3a720da14c77299de316946b9c3fc8338a"
fi
