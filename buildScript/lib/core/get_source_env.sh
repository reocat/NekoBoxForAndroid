if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="6f39a10817860794badf1be7f5c0df3ff5f9a532"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="8d7ff735b796579bdc7249b68a1a19d6eeb88c84"
fi
type
