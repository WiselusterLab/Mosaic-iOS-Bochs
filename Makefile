AS = ${CROSS_COMPILE}as
AS_FLAGS = ${ASFLAGS}
BINARY = boot.bin
CONFIG = os.ini
CROSS_COMPILE = x86_64-linux-gnu-
DD = dd
DD_FLAGS = 
IMAGE = boot.img
INSTALL = install
INSTALL_FLAGS = -c -m 644
LD = ${CROSS_COMPILE}ld
LD_FLAGS = -Ttext=0x7C00 --oformat=binary ${LDFLAGS}
MKDIR = mkdir
MKDIR_FLAGS = -p
OBJECT = boot.o
PREFIX = ${prefix}
prefix = /private/var/mobile/Library/Bochs/Mosaic
RM = rm
RM_FLAGS = -rf
SED = sed
SED_FLAGS = 
SOURCE = boot.s
TARGET = ${CONFIG} ${IMAGE}
TEMPLATE = os.tpl

.PHONY: all clean install

all: ${TARGET}
	

clean: 
	${RM} ${RM_FLAGS} ${BINARY} ${CONFIG} ${IMAGE} ${OBJECT}

install: ${TARGET}
	${MKDIR} ${MKDIR_FLAGS} ${PREFIX}
	for file in ${^}; \
	do \
		${INSTALL} ${INSTALL_FLAGS} $${file} ${PREFIX}; \
	done

${BINARY}: ${OBJECT}
	${LD} ${LD_FLAGS} ${^} -o ${@}

${CONFIG}: ${TEMPLATE}
	${SED} ${SED_FLAGS} 's#~prefix~#${PREFIX}/${IMAGE}#g' ${^} >${@}

${IMAGE}: ${BINARY}
	${DD} ${DD_FLAGS} if=/dev/zero of=${@} bs=1474560 count=1
	${DD} ${DD_FLAGS} if=${^} of=${@} bs=512 count=1 conv=notrunc

${OBJECT}: ${SOURCE}
	${AS} ${AS_FLAGS} ${^} -o ${@}
