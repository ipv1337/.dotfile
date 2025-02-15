# https://github.com/eendroroy/alien?tab=readme-ov-file

#export ALIEN_THEME="bnw"

export ALIEN_SECTIONS_LEFT=(
  exit
  #battery
  user
  path
  vcs_branch:async
  vcs_status:async
  vcs_dirty:async
  newline
  ssh
  venv
  prompt
)

export ALIEN_SECTIONS_RIGHT=(
  #time
)

export ALIEN_SECTIONS_LEFT_SEP_SYM=
export ALIEN_SECTIONS_RIGHT_SEP_SYM=

export ALIEN_PROMPT_SYM=
export ALIEN_PROMPT_FG=255

#export ALIEN_SECTION_EXIT_CODE=0
#export ALIEN_SECTION_EXIT_FG=255
export ALIEN_SECTION_EXIT_BG=255
#export ALIEN_SECTION_EXIT_BG_ERROR=200

#export ALIEN_SECTION_BATTERY_FG=100
#export ALIEN_SECTION_BATTERY_BG=150

export ALIEN_SECTION_USER_HOST=1
export ALIEN_SECTION_USER_FG=255
export ALIEN_SECTION_USER_BG=0

export ALIEN_SECTION_PATH_COMPONENTS=4
export ALIEN_SECTION_PATH_FG=255
export ALIEN_SECTION_PATH_BG=239

export ALIEN_GIT_TRACKED_COLOR=234
export ALIEN_GIT_UN_TRACKED_COLOR=241

export ALIEN_SECTION_VCS_BRANCH_FG=232
export ALIEN_SECTION_VCS_BRANCH_BG=243
export ALIEN_SECTION_VCS_STATUS_FG=232
export ALIEN_SECTION_VCS_STATUS_BG=243
export ALIEN_SECTION_VCS_DIRTY_FG=232
export ALIEN_SECTION_VCS_DIRTY_BG=247

export ALIEN_VERSIONS_PROMPT='JAVA_S PYTHON_S RUBY_S NODE_S'

export ALIEN_SECTION_TIME_FORMAT=%H:%M:%S # default is %r
#export ALIEN_SECTION_TIME_FG=100
#export ALIEN_SECTION_TIME_BG=150

#export ALIEN_CUSTOM_THEME_PATH=~/.oh-my-zsh/custom/themes/alien.zsh


source ~/.oh-my-zsh/custom/themes/alien/alien.zsh

