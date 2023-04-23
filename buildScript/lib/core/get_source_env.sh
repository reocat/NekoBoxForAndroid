if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="a4eacbd0e54b6ec0a42096c42b6137a5be91a0bc"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="087c2c6d5e6b6de4d156a09a93951485331e624f"
fi
