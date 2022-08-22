#Node IP : 10.22.84.76

#Bulk Loader :
cd /home/ec2-user/pacs/test/BulkLoader/

nohup /home/test/java-1.8.0-openjdk-1.8.0.312.b07-1.amzn2.0.2.x86_64/jre/bin/java -jar -Dspring.config.location=/home/ec2-user/pacs/test/BulkLoader/application.properties BulkLoader-11.0.jar BATCH SIM &

#BulkFileLoader:
cd /home/ec2-user/pacs/test/BulkFileLoader/

nohup /home/test/java-1.8.0-openjdk-1.8.0.312.b07-1.amzn2.0.2.x86_64/jre/bin/java -jar -Dspring.config.location=/home/ec2-user/pacs/test/BulkFileLoader/application.properties BulkFileLoader-11.0.jar &

#BulkLoaderRestWebServices:
cd /home/ec2-user/pacs/test/BulkLoaderRestWebServices/

nohup /home/test/java-1.8.0-openjdk-1.8.0.312.b07-1.amzn2.0.2.x86_64/jre/bin/java -jar -Dspring.config.location=/home/ec2- user/pacs/test/BulkLoaderRestWebServices/application.properties BulkLoaderRestWebServices-11.0.jar &

