# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Download manager, written in Java, for one-click hosting sites like Rapidshare and Megaupload. Uses its own updater."
HOMEPAGE="http://jdownloader.org/"
SRC_URI="http://installer.jdownloader.org/JDownloader.jar"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="virtual/jre"
RDEPEND="${DEPEND}"

src_unpack() {
    mkdir -p "${S}"
    cp -L "${DISTDIR}/${A}" "${S}/${A}"
}

src_install() {
    insinto "/opt/${PN/jd/JD}"
    doins -r *
    fperms +x "/opt/${PN/jd/JD}/${A}"
    dobin "${FILESDIR}/${PN/jd/JD}"
    make_desktop_entry "${PN/jd/JD}" "${PN/jd/JD}" "${PN/jd/JD}" "Network;FileTransfer;P2P"
    doicon ${FILESDIR}/${PN/jd/JD}.png
}

pkg_postinst() {
    chown -R root:users "/opt/${PN/jd/JD}"
    chmod -R g+w "/opt/${PN/jd/JD}"
}

pkg_prerm() {
    [[ -d "${ROOT}/opt/${PN/jd/JD}" ]] && rm -rf "${ROOT}/opt/${PN/jd/JD}" && mkdir "${ROOT}/opt/${PN/jd/JD}" && touch "${ROOT}/opt/${PN/jd/JD}/${PN/jd/JD}.jar"
}