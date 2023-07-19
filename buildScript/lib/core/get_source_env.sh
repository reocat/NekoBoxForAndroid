if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="03df5df5b343c2d6da6bfd27656a12353cc457dd"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="f8f751c221f7edb8529073e2daa2ba6516f1bbcb"
fi
