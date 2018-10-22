#!/usr/bin/env bash

$* ../configure INSTALL="/usr/bin/install" \
         --with-methods="${METHODS}" \
         --prefix="${PREFIX}" \
         --enable-silent-rules \
         --enable-unique-id \
         --disable-warnings \
         --with-thread-model=openmp \
         --disable-maintainer-mode \
         --enable-petsc-hypre-required \
         --enable-metaphysicl \
         --disable-timestamps || exit 1
