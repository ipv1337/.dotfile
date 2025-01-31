export PATH=/opt/homebrew/opt/openjdk/bin:$PATH

export JAVA_HOME="$(dirname $(dirname $(realpath $(which javac))))"
