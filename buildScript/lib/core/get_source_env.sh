if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="70387142a28f10663b847988306ff6899fce0176"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="451e15045a98b475100c53a8108ccc0772efaed0"
fi
