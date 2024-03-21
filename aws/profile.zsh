function aws-profiles() {
  if [ $# -lt 1 ]
  then
    export AWS_PROFILE=$(aws configure list-profiles | fzf)
  else
    export AWS_PROFILE=$1
  fi
  echo "Connect to AWS_PROFILE=${AWS_PROFILE}"
  # then use `aws sso login`
}