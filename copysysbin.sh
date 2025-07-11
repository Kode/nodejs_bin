if [[ $OSTYPE == linux-gnu* ]]; then
	arch=$(uname -m)
	if [[ "$arch" == "aarch64" ]]; then
		cp "$( dirname "${BASH_SOURCE[0]}" )"/node-linux_arm64 "$( dirname "${BASH_SOURCE[0]}" )"/node
	elif [[ "$arch" == "x86_64" ]]; then
		cp "$( dirname "${BASH_SOURCE[0]}" )"/node-linux_x64 "$( dirname "${BASH_SOURCE[0]}" )"/node
	elif [[ "$arch" == "armv" ]]; then
		cp "$( dirname "${BASH_SOURCE[0]}" )"/node-linux_arm "$( dirname "${BASH_SOURCE[0]}" )"/node
	else
		echo "Unknown Linux machine '$MACHINE_TYPE', please edit copysysbin.sh"
		exit 1
	fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
	arch=$(uname -m)
	if [[ "$arch" == "arm64" ]]; then
		cp "$( dirname "${BASH_SOURCE[0]}" )"/node-macos_arm64 "$( dirname "${BASH_SOURCE[0]}" )"/node
	elif [[ "$arch" == "x86_64" ]]; then
		cp "$( dirname "${BASH_SOURCE[0]}" )"/node-macos_x64 "$( dirname "${BASH_SOURCE[0]}" )"/node
	else
		echo "Unknown macOS machine '$MACHINE_TYPE', please edit copysysbin.sh"
		exit 1
	fi
fi
