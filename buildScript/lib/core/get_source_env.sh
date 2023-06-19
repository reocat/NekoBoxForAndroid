if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="da009b57ce228c47db8c8b6c9c699aa6eaba2945"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="0135f49290916292ce0be1cf8bedd80a1cef5900"
fi
