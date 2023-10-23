if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="23b2e02b0758e9daffd3eb01ccb7377818c5beed"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="dc05ba54e169686b013bdcb1b965cf80c879ece4"
fi
type
