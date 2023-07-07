if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="3805838008319a97e4495f43e10a1d4c9c1e512a"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="b9bd9ffbe8fe5703cfe22dfad7185629edda2a1c"
fi
