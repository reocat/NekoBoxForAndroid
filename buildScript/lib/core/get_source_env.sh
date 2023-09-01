if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="70387142a28f10663b847988306ff6899fce0176"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="001173c3cf285e7f0dc1385fc9f1bc6aa91a1369"
fi
type