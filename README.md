README.md

Place server.sh and serverstatus.sh in the same directory

Lets say we used /home/lo

Enter a bash shell and type

crontab -e

At the end paste the line

*/10 * * * * /home/lo/serverstatus >/home/lo/servers.log 2>&1

Then exit and save with ctrl x

Every 10 minutes the script will check if servers are up, and if not restart them

You can check the file /home/lo/servers.log for any errors
