# $NetBSD: Makefile,v 1.12 2018/10/24 15:49:40 schmonz Exp $
#

DISTNAME=		checkpassword-pam-0.99
PKGREVISION=		2
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=checkpasswd-pam/}

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://checkpasswd-pam.sourceforge.net/
COMMENT=		PAM checkpassword-compatible authentication program
LICENSE=		gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CHECKPASSWORD_BIN=	bin/checkpassword-pam

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8

.include "../../mk/pam.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
