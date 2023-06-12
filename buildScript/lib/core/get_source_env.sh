if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="5dd9ad10dde99a32ee8a0566498e5281b52b0cb7"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="604e7bd822237934687079914cb46b830b8d42b4"
fi
