# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="The legendary Git GUI client for Windows, Mac and Linux"
HOMEPAGE="https://www.gitkraken.com/"
SRC_URI="https://release.gitkraken.com/linux/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="EULA"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="gnome-base/libgnome-keyring"
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	insinto /opt
	doins -r *

	fperms a+x /opt/${PN}/${PN}
	fperms a+x /opt/${PN}/resources/app.asar.unpacked/node_modules/nodegit/build/Release/nodegit.node
	dosym /opt/${PN}/${PN} /usr/bin/${PN}

	doicon "${FILESDIR}/${PN}.png"
	make_desktop_entry "${PN}" "GitKraken" "${PN}" "Development"
}
