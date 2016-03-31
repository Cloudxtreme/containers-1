FROM fedora

MAINTAINER "Steffen Vogel <post@steffenvogel.de>

ENTRYPOINT /bin/bash

RUN dnf install tar

RUN bash Xilinx_Vivado_SDK_2015.3_0929_1_Lin64.bin —-target /tmp/xilinx —-keep —nox11
RUN /tmp/xilinx/xsetup -e "Vivado System Edition" -b Install --agree XilinxEULA,3rdPartyEULA,WebTalkTerms

ENTRYPOINT /opt/Xilinx/ISE….
