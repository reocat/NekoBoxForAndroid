if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="03df5df5b343c2d6da6bfd27656a12353cc457dd"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="3aee887adedf2e6ecd060f626f0ffd639907f2de"
fi
