if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="c419bc9a28b23f528072aedbb2d956dbfda0cbb3"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="a711b2ca6359f1d8cf369d83f8a67bb00d7b1ac6"
fi
