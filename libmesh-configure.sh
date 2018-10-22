#!/usr/bin/env bash

PETSC_DIR=$HOME/petsc PETSC_ARCH=alex-maint-opt ../configure INSTALL="/usr/bin/install" \
         --with-methods="${METHODS}" \
         --prefix=$HOME/projects2/moose/libmesh/installed \
         --enable-silent-rules \
         --enable-unique-id \
         --disable-warnings \
         --with-thread-model=openmp \
         --disable-maintainer-mode \
         --enable-petsc-hypre-required \
         --enable-metaphysicl \
         --disable-timestamps $* || exit 1
