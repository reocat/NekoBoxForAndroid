if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="e5d208ff4f1993e2341c7c4d31614472fc8111b7"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="38186adf0267c1225a8c2634f58f62eb21d1276a"
fi
type
