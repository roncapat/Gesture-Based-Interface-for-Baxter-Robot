#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_build_tools"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lucrezia/sofar_ws/src/rosjava/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lucrezia/sofar_ws/src/rosjava/install/lib/python2.7/dist-packages:/home/lucrezia/sofar_ws/src/rosjava/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lucrezia/sofar_ws/src/rosjava/build" \
    "/usr/bin/python2" \
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_build_tools/setup.py" \
    build --build-base "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_build_tools" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/lucrezia/sofar_ws/src/rosjava/install" --install-scripts="/home/lucrezia/sofar_ws/src/rosjava/install/bin"
