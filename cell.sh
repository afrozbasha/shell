temp="STATUS: deployed"
status=$(helm status nginx | grep "STATUS")
#Pass the variable in string
case "$status" in
	#case 1
	"STATUS: deployed") helm status nginx | grep "STATUS" ;;
	
	#case 2
	"STATUS: pending" | "STATUS: unknown" | "STATUS: uninstalled" | "STATUS: superseded" | "STATUS: failed" | "STATUS: uninstalling" | "STATUS: pending-install" | "STATUS: pending-upgrade" | "STATUS: pending-rollback") helm delete nginx ;;
esac
