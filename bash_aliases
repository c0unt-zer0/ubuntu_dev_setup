#!/usr/bin/env bash

# Misc
alias e=~/scripts/emacsclient.sh
alias ös=ls
alias f5conn=~/scripts/connect_to_vpn.sh
alias f5i="f5fpc --info"
alias prp="poetry run poe"
alias short_ps1='PS1="\W $ "'

# Bazel
alias fix=buildifier
alias bfix="bazel run //:buildifier.fix"
alias bbre="bazel build --config re"
alias btre="bazel test --config re"

# Git
alias gam="git commit --amend"
alias gamn="git commit --amend --no-edit"
alias gpr="git pull --rebase"
alias gpm="git push origin HEAD:refs/for/master"
alias gpj="git push origin HEAD:${USER}"
alias gpb="git toprepo push origin HEAD:refs/for/work/bazel-migration"
alias gg="git grep"
alias glo="git log --oneline"
alias gno="git log --name-only"
alias gns="git log --name-status"
alias grh="git reset --hard"
alias grhob='git reset --hard origin/work/bazel-migration'
alias glp="git log -p"
alias gut="git"
alias grc="git rebase --continue"
alias cherry="git cherry-pick"
alias uno="git st -uno"

# dirs
alias ..="cd .."
alias cdr="cd ~/repo"
alias cdrr="cd ~/repo/rdswf"
alias cdsup="cd ~/repo/rdswf/bazel/super"
alias cdd="cd ~/Downloads"

#Docker
alias run_grafana_shelob="docker run --rm -d --net host -v grafana-storage:/var/lib/grafana -v ${HOME}/repo/rdswf/shelob/panel/shelob_logs:/var/lib/grafana/plugins/shelob-logs --name grafana-shelob grafana/grafana"
alias run_grafana="docker run --rm -d --net host -v grafana-storage:/var/lib/grafana --name grafana grafana/grafana"
alias run_prometheus="docker run --rm -d --name prometheus --net host -v prom_storage:/prometheus -v ${HOME}/repo/rdswf/temp/prometheus.yml:/etc/prometheus/prometheus.yml  prom/prometheus --web.enable-remote-write-receiver --config.file=/etc/prometheus/prometheus.yml --web.listen-address=\"0.0.0.0:9090\""
alias run_loki="docker run --rm -d --name loki --net host grafana/loki"
alias run_structurizr="docker run --rm -d --name structurizr -p 8080:8080 -v ${HOME}/repo/rdswf/rdswf-ops-station/doc/system_design.dsl:/usr/local/structurizr/workspace.dsl structurizr/lite"
