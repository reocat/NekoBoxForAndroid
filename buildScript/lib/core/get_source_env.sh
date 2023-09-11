if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="39bf0071150330ee00e143b35b087d7ef48d7789"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="3e7269d37ced0c7a1ed829a6ab3dc9c9cb84c857"
fi
type