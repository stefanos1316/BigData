#!/bin/bash
echo "Starging..."

exec5="$(./MultipleExecutionsCopyData.bbftp /root/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/25GB_Avg_2GB/ root@77.234.203.252 /dev/null)"
eval=$exec5

#echo "5GB transfer has been completed..."

#exec10="$(./MultipleExecutionsCopyData.bbftp /root/25GB_Transfer/BBFTP_NEW -pwl 1,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /net/10.10.20.3/mnt/TestData/  root@10.10.20.177 /dev/null)"
3eval=$exec10

3echo "10GB transfer has benn completed..."

#exec15="$(./MultipleExecutionsCopyData.bbftp /root/15GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/15GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec15

#echo "15GB transfer has been completed..."

#exec20="$(./MultipleExecutionsCopyData.bbftp /root/20GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/20GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec20

#echo "20GB transfer has been completed..s"

#exec25="$(./MultipleExecutionsCopyData.bbftp /root/25GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/25GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec25

#echo "25GB transfer has been completed..."

echo "Finished"
