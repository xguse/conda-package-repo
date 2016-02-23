
all: index dir_listings

index:
	conda index \
	pkgs/channel/noarch \
	pkgs/channel/linux-32 \
	pkgs/channel/linux-64 \
	pkgs/channel/osx-64 \
	pkgs/channel/win-32 \
	pkgs/channel/win-64

dir_listings:
	./update-dir-indexes.sh
