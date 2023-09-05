if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="2d7e05f22f2c3285ca929aaa0cad79ba4fd3e1fb"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="879d153d09884594703f48edc7d24675cbbe7e04"
fi
type