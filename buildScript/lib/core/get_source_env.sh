if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="9064655c5de676741b984729dfbcbb2f3b52f395"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="15c4165811b97a8af4a73e4ee117836e5ce59157"
fi
type
