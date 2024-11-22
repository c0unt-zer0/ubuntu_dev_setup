#!/usr/bin/env bash

regenerate_bazel_completion () {(
    set -e

    usage () {(
        echo -e "Function to regenerate bazel tab completion"
        echo -e "Usage: regenerate_bazel_completion [-h] [-v version] <path>"
        echo -e "        -h: prints this message"
        echo -e "-v version: version of bazel to use"
        echo -e "    <path>: path to a directory containing a .bazelversion file"
        echo -e "            (not used if -v is used)"
    )}

    local OPTIND opt h v VERSION
    while getopts ":hv:" opt ; do
        case "${opt}" in
            h) usage
               exit 0
                ;;
            v) VERSION=${OPTARG}
                ;;
            ?) echo -e "Invalid option."
               usage
               exit 1
                ;;
        esac
    done
    shift $((OPTIND-1))

    if [ -z "$VERSION" ]; then
        if [ -z "$1" ]; then
            echo "No path or version specified"
            usage
            exit 1
        fi
        if [ ! -f $1/.bazelversion ]; then
            echo "Missing .bazelversion file in $1"
            exit 1
        fi
        VERSION=$(cat $1/.bazelversion)
    fi

    rm -f ~/.bazelcomplete

    curl -fsSL https://raw.githubusercontent.com/bazelbuild/bazel/${VERSION}/scripts/bazel-complete-header.bash >> ~/.bazelcomplete
    curl -fsSL https://raw.githubusercontent.com/bazelbuild/bazel/${VERSION}/scripts/bazel-complete-template.bash >> ~/.bazelcomplete
    bazel help completion >> ~/.bazelcomplete
    source ~/.bazelcomplete
)}

if [ -f ~/.bazelcomplete ]; then
    source ~/.bazelcomplete
fi
