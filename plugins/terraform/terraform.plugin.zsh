if (( $+commands[terraform] )); then
  cat ${${(%):-%N}:A:h}/_terraform > $ZSH_CACHE_DIR/completions/_terraform

  # If the completion file doesn't exist yet, we need to autoload it and
  # bind it to `terraform`. Otherwise, compinit will have already done that.
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_terraform" ]]; then
    complete -C terraform _terraform
  fi

  alias tf='terraform'

  alias tfi='tf init'

  alias tfp='tf plan'
  alias tfip='tfi && tfp'

  alias tfa='tf apply'
  alias tfia='tfi && tfa'

  alias tfd='tf destroy'
  alias tfid='tfi && tfd'

  alias tfa!='tfa -auto-approve'
  alias tfia!='tfi && tfa!'

  alias tfv='tf validate'
  alias tfiv='tfi && tfv'

  alias tfver='tf version'
  alias tfw='tf workspace'

  alias tfst='tf state'
  alias tfstls='tfst list'
  alias tfstmv='tfst mv'
  alias tfstrm='tfst rm'
  alias tfsts='tfst show'

  alias tfc='tf console'
  alias tfctx='tf context'
  alias tff='tf fmt -recursive'
  alias tffu='tf force-unlock'
  alias tfg='tf get'
  alias tfgr='tf graph'
  alias tfimp='tf import'
  alias tfo='tf output'
  alias tfprov='tf providers'
  alias tfr='tf refresh'
  alias tfs='tf show'
  alias tft='tf taint'
  alias tfunt='tf untaint'
fi
