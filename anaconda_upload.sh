#!/bin/bash

# Upload to Anaconda Cloud using settings from build_fenics.conf

conda config --add channels ${CONDA_USERNAME}/label/${CONDA_BUILD_LABEL}

# Upload all dependencies if not already there
anaconda upload ${CONDA_BUILD_DIR}/boost-1.61.0-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
# anaconda upload --force ${CONDA_BUILD_DIR}/vtk-5.10.1-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload --force ${CONDA_BUILD_DIR}/hdf5-parallel-1.8.14-${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload --force ${CONDA_BUILD_DIR}/h5py-parallel-2.6.0-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload ${CONDA_BUILD_DIR}/eigen3-3.2.1-${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
# #anaconda upload ${CONDA_BUILD_DIR}/hwloc-1.11.2-${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload --force ${CONDA_BUILD_DIR}/petsc-3.7.3-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload --force ${CONDA_BUILD_DIR}/petsc4py-3.7.0-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}
anaconda upload --force ${CONDA_BUILD_DIR}/slepc-3.7.2-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}

anaconda upload ${CONDA_BUILD_DIR}/fenics-${FENICS_VERSION}-py27_${CONDA_BUILD_NUMBER}.tar.bz2 --label ${CONDA_BUILD_LABEL}

