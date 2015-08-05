#!/bin/bash
echo "Starging..."

#exec25="$(./MultipleExecutionsCopyData.bbcp /home/sgeorgiou/Testing -pwl 1 131072 /home/sgeorgiou/BigData/test-data/5GB/ root@localhost /dev/null)"
#eval=$exec25

echo "5GB transfer has been completed..."

exec="$(./MultipleExecutionsCopyData.bbcp /home/sgeorgiou/Testing -pwl 32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432  /home/sgeorgiou/BigData/test-data/5GB/  root@localhost /dev/null)"
eval=$exec

echo "5GB transfer has benn completed..."

#exec15="$(./MultipleExecutionsCopyData.bbcp /root/15GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/15GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec15

#echo "15GB transfer has been completed..."

#exec20="$(./MultipleExecutionsCopyData.bbcp /root/20GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/20GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec20

#echo "20GB transfer has been completed..s"

#exec25="$(./MultipleExecutionsCopyData.bbcp /root/25GB_Transfer/ -pwl 1,2,4,8,16,32,64 131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432 /root/space/test-data/MultipleFilesData/25GB_Mulitple  root@192.168.1.60 /dev/null)"
#eval=$exec25

#echo "25GB transfer has been completed..."

echo "Finished"
