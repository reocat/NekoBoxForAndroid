if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="ae31f9f1f745c88fc9430ad5903116536e88bab4"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="b13ddda22823f5f8645489184d66648c12e56a90"
fi
