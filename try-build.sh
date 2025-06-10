#!/bin/bash
SCRIPT_ARGS="$1"

if [ "$SCRIPT_ARGS" = "--clean" ]; then
    FORCE_CLEAN="true"
fi


setup_color() {  # Activate color codes.
    RED="\e[31m"
    GREEN="\e[32m"
    YELLOW="\e[33m"
    BLUE="\e[34m"
    RESET="\e[0m"   
}

run_command() {
    TARGET_CMD="$1"
    
    echo -e "${GREEN}-> $TARGET_CMD ${RESET}"
    $TARGET_CMD

    TARGET_CMD_EXIT_STAT="$?"
    if [ "$TARGET_CMD_EXIT_STAT" != "0" ]; then
        echo -e "${RED}[!!] ERROR: Command failed. bad return status: $TARGET_CMD_EXIT_STAT $RESET"
        exit 1
    fi
}

prepare_env() {
    export LC_ALL="C"
    export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
    export KCFLAGS="-Wno-error=maybe-uninitialized"
    export USER="root"
}

main() {
    echo -e "Enabling color mode"
    setup_color
    echo -e "Setting up variable"
    prepare_env
    
    echo -e "Try to build..."
    run_command ". build/envsetup.sh"
    
    if [ "$FORCE_CLEAN" = "true" ]; then
        run_command "make clean"
    fi

    run_command "lunch lineage_a04br3-userdebug"
    run_command "mkdir -p /home/builder/builddir/out/target/product/a04br3/obj/KERNEL_OBJ/usr"
    run_command "brunch a04br3"

    echo -e "${BLUE}[OK] Build successfully ${RESET}" 
}


main