# Parallel ping with log
Simple bash script to test ping on multiple destinations.

Infinite loop test.

Only unreachable destinations are logged.

## Prerequisite
Install [parallel](https://www.gnu.org/software/parallel/) on your system:

```apt install parallel```

## Usage:

parallelping &lt;hostlist> &lt;seconds_between_each_test> [outputfilename]

Hosts are listed one per line, no commas.
