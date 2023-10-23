# ping_parallel_with_log
Simple bash script to test ping on multiple destinations. Only unreachable destinations are logged.

Needs parallel:

apt install parallel

Usage:

parallelping.sh {hostlist} {sleep in seconds between test} [outputfilename]
