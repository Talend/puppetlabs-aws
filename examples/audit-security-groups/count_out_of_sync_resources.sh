#!/bin/bash
#
# This script exits with the number of out of sync resources found
# in a valid lastrun file generated by puppet.
# It's intended to allow for using --noop but alerting on
# non-zero exit codes.
#
# This is a workaround for https://tickets.puppetlabs.com/browse/PUP-686
#
exit `cat lastrun | grep out_of_sync | awk '{print $2}'`