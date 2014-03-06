#!/bin/sh

APP_DIR="$(dirname $0)/.."
cd ${APP_DIR}

MD="markdown"
MDFLAGS="-T"
SOURCE="README.md"
TARGET="index.html"

echo "== Build index.html ... =="

cat > ${TARGET} <<-EOF
---
layout: default
title: CCPAGING &bull; Algebra self-learning.
overview: true
---

EOF

${MD} ${MDFLAGS} ${SOURCE} >> ${TARGET}

echo "== Finished =="
