if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="1ea593f166ddb44e12ba9c7b41bcc6e73b66b550"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="05ca8a0a98ac037eb4333982a95ac042059ff7d5"
fi
