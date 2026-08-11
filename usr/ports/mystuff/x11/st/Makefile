COMMENT =		simple X terminal

V =			0.9.3
DISTNAME =		st-${V}
REVISION =		0

CATEGORIES =		x11

HOMEPAGE =		https://st.suckless.org/

# MIT/X
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		X11 Xft c fontconfig freetype m util

SITES =			https://dl.suckless.org/st/

RUN_DEPENDS =		fonts/terminus-font

MAKE_ENV =		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST =		Yes

post-patch:
	cp ${FILESDIR}/config.h ${WRKSRC}/config.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/st ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/st.1 ${PREFIX}/man/man1/
	sed -i s/VERSION/${V}/g ${PREFIX}/man/man1/st.1
	tic -s -x -o ${PREFIX}/share/terminfo ${WRKSRC}/st.info

.include <bsd.port.mk>
