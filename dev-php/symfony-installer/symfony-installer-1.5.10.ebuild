# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="The Symfony Installer"
HOMEPAGE="https://symfony.com/doc/current/setup.html"
SRC_URI="https://symfony.com/installer -> symfony-installer"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="dev-lang/php"
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir -p "${S}"
	cp -L "${DISTDIR}/${A}" "${S}/symfony"
}

src_install() {
	dobin "symfony"
}
