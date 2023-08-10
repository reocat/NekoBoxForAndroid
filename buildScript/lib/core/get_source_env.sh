if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="df902756f9c50257c48c580e2b5f1b5b190f89bc"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="ccf560fa42ff9a58e1f52664ba1b784c097e2cd4"
fi
