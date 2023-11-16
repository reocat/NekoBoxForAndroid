if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="23f074fcd7938559752d9b3d16d5dcb0ff9851b9"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="a5b467da904fbaf6639889f9b8b87c75dfccd523"
fi
type
