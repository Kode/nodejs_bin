if [[ "$OSTYPE" == "linux-gnu" ]]; then
	cp "$( dirname "${BASH_SOURCE[0]}" )"/iojs-linux64 "$( dirname "${BASH_SOURCE[0]}" )"/iojs
elif [[ "$OSTYPE" == "darwin"* ]]; then
	cp "$( dirname "${BASH_SOURCE[0]}" )"/iojs-osx "$( dirname "${BASH_SOURCE[0]}" )"/iojs
fi

