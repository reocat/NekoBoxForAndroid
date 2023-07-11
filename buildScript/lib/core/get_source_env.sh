if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="c0127f6e833ecad55f9ba8f6ece60c9a8d7acd86"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="b0a28d73ae7d81c36e8cf2c328adf31970277eed"
fi
