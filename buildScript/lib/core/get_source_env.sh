if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="c0127f6e833ecad55f9ba8f6ece60c9a8d7acd86"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="f8f751c221f7edb8529073e2daa2ba6516f1bbcb"
fi
