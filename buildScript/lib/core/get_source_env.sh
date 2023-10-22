if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="9064655c5de676741b984729dfbcbb2f3b52f395"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="9e1e05e95df13950a14d585309eb74916935275e"
fi
type
