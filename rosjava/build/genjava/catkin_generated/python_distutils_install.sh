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

echo_and_run cd "/home/federico/rosjava/src/genjava"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/federico/rosjava/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/federico/rosjava/install/lib/python2.7/dist-packages:/home/federico/rosjava/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/federico/rosjava/build" \
    "/usr/bin/python2" \
    "/home/federico/rosjava/src/genjava/setup.py" \
    build --build-base "/home/federico/rosjava/build/genjava" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/federico/rosjava/install" --install-scripts="/home/federico/rosjava/install/bin"
