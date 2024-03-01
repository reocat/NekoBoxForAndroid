if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="73bce610791a373dad29cb80b8ffc05fe87e21ec"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="a5b467da904fbaf6639889f9b8b87c75dfccd523"
fi
type
