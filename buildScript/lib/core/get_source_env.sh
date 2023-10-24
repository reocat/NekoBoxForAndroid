if [ ! -z $ENV_NB4A ]; then
  export COMMIT_SING_BOX_EXTRA="046c0e406ed4719608fb38fed90e3b1e229163f9"
fi

if [ ! -z $ENV_SING_BOX_EXTRA ]; then
  source libs/get_source_env.sh
  export COMMIT_SING_BOX="432b5c5568de72e560cc4ae974039906c6ca292f"
fi
type
