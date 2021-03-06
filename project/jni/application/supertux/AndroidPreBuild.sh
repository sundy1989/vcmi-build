#!/bin/sh

if [ -e supertux/patched.successfully ]; then
	exit 0
else
	# Google Code fails to send shallow repository, so we're checking out everything
	git clone https://code.google.com/p/supertux && patch -p1 -d supertux < android.diff && touch supertux/patched.successfully || exit 1
fi
