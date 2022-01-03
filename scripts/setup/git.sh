#!/usr/bin/bash

KEYGEN_METHOD=ed25519

# parse the arguments
while [ $# -gt 0 ]
do
	KEY=$1
	case "$KEY" in
		-e|--email)
			email="$2"
			shift
			shift
			;;
		-n|--name)
			name="$2"
			shift
			shift
			;;
		*)
			echo "Unknown flag $KEY" >&2
			exit 1
			;;
	esac
done


echo "...Installing git"
pkg install --yes openssh git

echo "...Generating ssh key"
ssh-keygen -t $KEYGEN_METHOD -C "$email" -f $HOME/.ssh/id_$KEYGEN_METHOD -N ""

echo "...Add this key to github account and continue"   
echo "..."
cat $HOME/.ssh/id_$KEYGEN_METHOD.pub
echo "..."

git config --global user.email "$email"
git config --global user.name "$name"

echo "...done"

