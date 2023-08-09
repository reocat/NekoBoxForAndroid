if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="bbca45fdb944209790ad0bb55982690dff31ba2b"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="5683af68d5dc51c67853414175717a92567dfbad"
fi
