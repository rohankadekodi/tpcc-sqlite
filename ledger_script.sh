#!/bin/bash

set -x

sudo rm -rf /mnt/pmem_emul/* && sudo cp database/tpcc.db /mnt/pmem_emul/ && sync

sudo rm /tmp/ledger_dbg.tmp

sleep 3

#sudo /home/rohan/projects/quill-anon/quill-tpcc/run_quill.sh -p /home/rohan/projects/quill-anon/quill-tpcc/ -t nvp_nvp.tree ./tpcc_start -w 4 -c 1 -t 200000

sudo /home/rohan/projects/quill-ycsb/run_quill.sh -p /home/rohan/projects/quill-ycsb/ -t nvp_nvp.tree ./tpcc_start -w 4 -c 1 -t 100
