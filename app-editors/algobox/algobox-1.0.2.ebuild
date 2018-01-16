# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils xdg-utils

DESCRIPTION="Algorithmic learning for high school students"
HOMEPAGE="http://www.xm1math.net/algobox"
SRC_URI="http://www.xm1math.net/algobox/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="dev-qt/qtcore:5
        dev-qt/qtprintsupport:5
        dev-qt/qtwebengine:5[widgets]"
RDEPEND="${DEPEND}"

src_compile() {
    eqmake5
}

src_install() {
    emake INSTALL_ROOT="${D}" install
}

pkg_postinst() {
    xdg_desktop_database_update
    xdg_mimeinfo_database_update
}

pkg_postrm() {
    xdg_desktop_database_update
    xdg_mimeinfo_database_update
}
