#!/usr/bin/env bash

#  <xbar.title>Vitruvian DX</xbar.title>
#  <xbar.version>v1.0</xbar.version>
#  <xbar.author>James H. Nguyen</xbar.author>
#  <xbar.author.github>ipv1337</xbar.author.github>
#  <xbar.desc>Utilities for DX.</xbar.desc>
#  <xbar.dependencies>bash,kubectl</xbar.dependencies>
#  <xbar.image>https://i.imgur.com/AmBpdmp.png</xbar.image>
#  <xbar.abouturl>https://james.bluecentre.net/</xbar.abouturl>

# Variables become preferences in the app:
#
#  <xbar.var>select(VAR_MENU_BAR_TEXT='🐳'): App icon to be shown in the menu app. [⚙️,🛠,🐳,Vitruvian]</xbar.var>
#  <xbar.var>string(VAR_HOME="/Users/james"): User home.</xbar.var>
#  <xbar.var>number(VAR_FONT_SIZE=16): Font size.</xbar.var>
#  <xbar.var>string(VAR_FONT_COLOR=red): Font color.</xbar.var>
#  <xbar.var>string(VAR_SELECTED_COLOR=green): Selected font color.</xbar.var>
#  <xbar.var>string(VAR_NAME="James"): Your name.</xbar.var>
#  <xbar.var>string(VAR_GCP_PRJ_FILTER="labels[flyr_project_type]:ooms AND labels[flyr_tenant]:rx"): GCP project filter.</xbar.var>
#  <xbar.var>number(VAR_COUNTER=1): A counter.</xbar.var>
#  <xbar.var>boolean(VAR_VERBOSE=true): Whether to be verbose or not.</xbar.var>
#  <xbar.var>select(VAR_STYLE="normal"): Which style to use. [small, normal, big]</xbar.var>

# https://github.com/matryer/xbar-plugins/blob/main/CONTRIBUTING.md

PATH=/opt/homebrew/bin:/Users/james/Downloads/google-cloud-sdk/bin:/usr/local/bin:$PATH


# Xbar
FONT=("SIZE=$VAR_FONT_SIZE")


# Commands
CMD_GREP=$(command -v grep)
CMD_AWK=$(command -v awk)
CMD_JQ=$(command -v jq)
CMD_TASK=$(command -v task)
CMD_COLIMA=$(command -v colima)
CMD_DOCKER=$(command -v docker)
CMD_KUBECTL=$(command -v kubectl)
CMD_GCLOUD=$(command -v gcloud)




# echo "|image=${KUBERNETES_LOGO}"
echo ${VAR_MENU_BAR_TEXT}




echo "---"
echo "What next ${VAR_NAME:-USER}? | color=blue | size=${VAR_FONT_SIZE}"

echo "---"
echo "EXT: $(curl --silent ifconfig.io) | color=${VAR_FONT_COLOR} | size=${VAR_FONT_SIZE}"
echo "INT: $(osascript -e 'IPv4 address of (system info)') | color=${VAR_FONT_COLOR} | size=${VAR_FONT_SIZE}"




if [ -n ${CMD_COLIMA} ]; then
  COLIMA_RUNNING_ICON='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'
  COLIMA_PROGRESS_ICON='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'
  COLIMA_STOPPED_ICON='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'
  echo "---"
  if (colima status >/dev/null 2>&1)
  then
    #echo "😎COLIMA | size=${VAR_FONT_SIZE} | refresh=true"
    echo "COLIMA | templateImage=${COLIMA_RUNNING_ICON} | size=${VAR_FONT_SIZE} | refresh=true"
    echo "--Restart | size=${VAR_FONT_SIZE} | bash=${CMD_COLIMA} param1=restart terminal=true refresh=true"
    echo "--Stop | size=${VAR_FONT_SIZE} | bash=${CMD_COLIMA} param1=stop terminal=true refresh=true"
  else
    #echo "🫣COLIMA | color=gray | size=${VAR_FONT_SIZE}"
    echo "COLIMA | templateImage=${COLIMA_STOPPED_ICON} | color=gray | size=${VAR_FONT_SIZE}"
    echo "--Start | size=${VAR_FONT_SIZE} | bash=${CMD_COLIMA} param1=start terminal=true refresh=true"
  fi
fi




if [ -n ${CMD_KUBECTL} ]; then
  # KUBERNETES_LOGO=''
  # KUBECONFIG=~/.kube/config
  currentContext=$(kubectl config current-context --request-timeout 3s)
  currentNamespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')
  contexts=$(kubectl config get-contexts --no-headers -o name --request-timeout 3s)
  namespaces=$(kubectl get namespaces --no-headers -o custom-columns=NAME:.metadata.name)
  echo "---"
  echo "🕸️KUBERNETES | size=${VAR_FONT_SIZE}"
  echo "--CONTEXT: ${currentContext} | size=${VAR_FONT_SIZE}"
  for item in ${contexts}; do
    echo -n "----${item} | size=${VAR_FONT_SIZE} | bash=${CMD_KUBECTL} param1=config param2=use-context param3=${item} terminal=false refresh=true"
    if [ "${item}" == "${currentContext}" ]; then
      echo " color=${VAR_SELECTED_COLOR}"
    else
      echo
    fi
  done
  echo "--NAMESPACE: ${currentNamespace} | size=${VAR_FONT_SIZE}"
  for item in ${namespaces}; do
    echo -n "----${item} | size=${VAR_FONT_SIZE} | bash=${CMD_KUBECTL} param1=config param2=set-context param3=--current param4='--namespace=${item}' terminal=false refresh=true"
    if [ "${item}" == "${currentNamespace}" ]; then
      echo " color=${VAR_SELECTED_COLOR}"
    else
      echo
    fi
  done
fi




if [ -n ${CMD_GCLOUD} ] && ${CMD_GCLOUD} info --format=json >/tmp/xbar_gcloud_cache 2>&1; then
  echo "---"
  echo "☁️GCP | size=${VAR_FONT_SIZE} | bash=${CMD_GCLOUD} param1=info param2='--format=json' param3='>/tmp/xbar_gcloud_cache' terminal=false refresh=true"
  echo "--ACCOUNT: $(${CMD_JQ} '.config.account' /tmp/xbar_gcloud_cache) | size=${VAR_FONT_SIZE}"
  echo "--PROJECT: $(${CMD_JQ} '.config.project' /tmp/xbar_gcloud_cache) | size=${VAR_FONT_SIZE}"
  #for item in $(${CMD_GCLOUD} projects list --filter="${VAR_GCP_PRJ_FILTER}" --format='value(projectId)'); do
  for item in $(${CMD_GCLOUD} projects list --filter="${VAR_GCP_PRJ_FILTER}" --format=json | ${CMD_JQ} '.[].projectId'); do
    echo -n "----${item} | size=${VAR_FONT_SIZE} | bash=${CMD_GCLOUD} param1=config param2=set param3=project param4=${item} terminal=false refresh=true"
    if [ "${item}" == "$(${CMD_JQ} '.config.project' /tmp/xbar_gcloud_cache)" ]; then
      echo " color=${VAR_SELECTED_COLOR}"
    else
      echo
    fi
  done
  echo "--GKE: | size=${VAR_FONT_SIZE}"
  #for item in "$(${CMD_GCLOUD} container clusters list --format='value(name,location)')"; do
    #read -r cluster region <<< "${item}"
    #echo -n "----${cluster} | size=${VAR_FONT_SIZE}"
    #if [[ "${contexts[*]}" =~ "${cluster}" ]]; then
  for item in $(${CMD_GCLOUD} container clusters list --format='value(name)'); do
    echo -n "----${item} | size=${VAR_FONT_SIZE}"
    if [[ "${contexts[*]}" =~ "${item}" ]]; then
      echo
    else
      location=$(${CMD_GCLOUD} container clusters list --filter="name:${item}" --format=json | ${CMD_JQ} '.[].location')
      echo " | bash=${CMD_GCLOUD} param1=container param2=clusters param3='get-credentials' param4=${item} param5="--region" param6=${location} terminal=true refresh=true"
    fi
  done
fi




#if [ -n ${CMD_TASK} ] && eval "${CMD_TASK} --taskfile ${VAR_HOME} >/dev/null 2>&1"; then
if [ -n ${CMD_TASK} ] && eval "${CMD_TASK} -l --json --taskfile ${VAR_HOME} >/tmp/xbar_task_cache 2>&1"; then
  cacheFile='/tmp/xbar_task_cache'
  echo "---"
  echo "✅TASKS | size=${VAR_FONT_SIZE} | bash=${CMD_TASK} param1='-l' param2='--json' param2='--taskfile' param3="${VAR_HOME}" param4='>' param5=${cacheFile} terminal=false refresh=true"
  #for item1 in $(${CMD_TASK} --taskfile=${VAR_HOME} -l --json | ${CMD_JQ} '.tasks[].name' | awk -F: '!seen[$1]++ {print $1}'); do
  for item1 in $(cat ${cacheFile} | ${CMD_JQ} '.tasks[].name' | awk -F: '!seen[$1]++ {print $1}'); do
    echo "--${item1} | size=${VAR_FONT_SIZE}"
    for item2 in $(cat ${cacheFile} | ${CMD_JQ} '.tasks[].name' | grep ${item1}); do
      echo "----${item2} | size=${VAR_FONT_SIZE} | bash=${CMD_TASK} param1=${item2} terminal=true refresh=false"
    done
  done
  # for item in $(${CMD_TASK} --taskfile=${VAR_HOME} -l --json | ${CMD_JQ} '.tasks[].name'); do
  #   echo "--${item} | size=${VAR_FONT_SIZE} | bash=${CMD_TASK} param1=${item} terminal=true refresh=false"
  # done
fi




if [ -d ${VAR_HOME}/Library/Application\ Support/xbar/plugins ]; then
  echo "---"
  echo "🗂️PLUGINS | size=${VAR_FONT_SIZE} | bash=$(command -v open) param1="." terminal=false refresh=false"
  #for item in $(find ${VAR_HOME}/Library/Application\ Support/xbar/plugins -maxdepth 1 -type f); do
  echo "--ON"
  for item in `ls ${VAR_HOME}/Library/Application\ Support/xbar/plugins | grep -v '.off' | grep -v '.json'`; do
    echo "--${item} | size=${VAR_FONT_SIZE} | bash=$(command -v open) param1="${item}" terminal=false refresh=false"
  done
  echo "--OFF"
  for item in `ls ${VAR_HOME}/Library/Application\ Support/xbar/plugins | grep '.off'`; do
    echo "--${item} | size=${VAR_FONT_SIZE} | bash=$(command -v open) param1="${item}" terminal=false refresh=false"
  done
fi




echo "---"
echo "🐞DEBUG | size=${VAR_FONT_SIZE} | refresh=true"
echo "--USER=${USER} | size=${VAR_FONT_SIZE}"
echo "--HOME=${HOME} | size=${VAR_FONT_SIZE}"
#for item in $(kubectl); do
#  echo "--$(command -v item)"
#done

