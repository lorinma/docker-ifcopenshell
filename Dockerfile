FROM quay.io/lorinma/ifc:cpp
MAINTAINER Ling Ma <lingma@technion.ac.il>

RUN git clone https://github.com/IfcOpenShell/IfcOpenShell.git
RUN cd IfcOpenShell; mkdir build; cd build; cmake ../cmake/ -DOCC_INCLUDE_PATH=/usr/local/include -DOCC_LIBRARY_PATH=/usr/local/lib -DCOLLADA_SUPPORT=OFF -DCMAKE_INSTALL_PREFIX=/usr/src; make -j4; make install
