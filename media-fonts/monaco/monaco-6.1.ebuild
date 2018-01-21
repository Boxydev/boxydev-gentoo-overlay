# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="the monaco font improved: add special characters in monaco.ttf"
HOMEPAGE="https://github.com/todylu/monaco.ttf"
SRC_URI="https://github.com/todylu/monaco.ttf/blob/master/monaco.ttf?raw=true -> monaco.ttf"

LICENSE=""
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf"

src_unpack() {
	cp -a "${DISTDIR}/${A}" "${S}/${A}"
}
