temp="STATUS: deployed"
status=$(helm status nginx | grep "STATUS")
#Pass the variable in string
case "$status" in
	#case 1
	"STATUS: deployed") echo "done" ;;
	
	#case 2
	"STATUS: pending") echo "No" ;;
esac
