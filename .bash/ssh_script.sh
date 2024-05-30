# if you pass in the abbreviated server name it won't prompt

ssh_login() {
	if [ $# -eq 1 ]; then
		ans=$1
	else

		# you need to have your .ssh/config file set up properly for this to work
		echo ""
		echo "h1: home-1"
		echo "h2: home-2"
		echo "h3: home-3"
		echo "h4: home-4"
		echo "h5: storage"
		echo ""
		echo -n ">> "
		read ans

	fi

	case $ans in
	h1) server="home-1" ;;
	h2) server="home-2" ;;
	h3) server="home-3" ;;
	h4) server="home-4" ;;
	h5) server="storage" ;;

	*)
		echo "ACK! WAT? "
		exit 1
		;;
	esac
	echo ""
	echo -n " * "
	grep $server ~/.ssh/config
	ssh $server

}
