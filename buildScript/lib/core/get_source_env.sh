if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="3c5d4ae9b771f216bc0eeabdf19d840c77e29858"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="451e15045a98b475100c53a8108ccc0772efaed0"
fi
