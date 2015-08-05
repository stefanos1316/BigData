#!/bin/bash
echo "Starging..."

exec5="$(./MultipleExecutionsCopyData.fdt /root/PNPI-to-ITMO -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /net/212.193.96.144/mnt/TestData root@77.234.203.252 /dev/null)"
eval=$exec5

echo "5GB transfer has been completed..."

#exec10="$(./MultipleExecutionsCopyData.fdt /root/25GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/testdata/  root@10.10.20.175 /dev/null)"
#eval=$exec10

echo "10GB transfer has benn completed..."

#exec15="$(./MultipleExecutionsCopyData.fdt /root/15GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/15GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec15

#echo "15GB transfer has been completed..."

#exec20="$(./MultipleExecutionsCopyData.fdt /root/20GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/20GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec20

#echo "20GB transfer has been completed..s"

#exec25="$(./MultipleExecutionsCopyData.fdt /root/25GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/25GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec25

#echo "25GB transfer has been completed..."

echo "Finished"
