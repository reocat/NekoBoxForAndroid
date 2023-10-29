if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="2f8e1bdb842ec2138c1699101a84950617c3cbb8"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="e1ae981166b228bba7bca138ac377df450029b40"
fi
type
