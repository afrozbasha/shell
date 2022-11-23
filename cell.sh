temp="STATUS: deployed"
status=$(helm status nginx | grep "STATUS")
#Pass the variable in string
case "$status" in
	#case 1
	"STATUS: deployed") heml status nginx | grep "STATUS" ;;
	
	#case 2
	"STATUS: pending") helm delete nginx ;;
esac
