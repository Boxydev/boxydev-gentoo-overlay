# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Cursor theme from OSX"
HOMEPAGE="https://www.gnome-look.org/p/1084939/"
SRC_URI="https://dl.opendesktop.org/api/files/download/id/1461053384/175749-OSX-ElCap.tar.bz2 -> ${P}.tar.bz2"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/OSX-ElCap"

src_install() {
	insinto /usr/share/icons
	doins -r OSX-ElCap
}
