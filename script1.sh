#Node IP:10.22.84.13


#Redis server Details:
cd /pacs/redis-4.0.11/src/

nohup ./redis-server --protected-mode no  redis-cliCONFIG SET requirepass p@ss$12E45 auth p@ss$12E45


#iPACS GUI Details:
cd /pacs/apache-tomcat-9.0.0.M26/bin/

./startup.sh

#SelfcareAPI:
cd /pacs/SelfcareAPI/

nohup java -jar -Dspring.config.location=.application.properties iPacsSelfcareLive.jar &


#EnterpriseAPI:
cd /pacs/EnterpriseAPI/

nohup java -jar -Dspring.config.location=.application.properties iPacsApiEnterprise.jar &


#AddAccountRestWebService:
cd /pacs/AddAccountRestWebService/

nohup java -jar -Dspring.config.location=.application.properties AddAccountRestWebService.jar &


#TroubleTicketAPI:
cd /pacs/TroubleTicketAPI/

nohup /home/ec2-user/test/java-11-openjdk-11.0.13.0.8-1.el7_9.x86_64/bin/java -jar -Dspring.config.location=.application.properties trouble-ticket-2.0.2-runner.jar &


#NicStatusValidator:
cd /pacs/bin/nicStatusValidator/

nohup java -jar NicStatusValidator.jar &

#Bulk Loader :
cd /pacs/test/BulkLoader/

nohup java -jar -Dspring.config.location=/pacs/test/BulkLoader/application.properties BulkLoader-11.0.jar BATCH SIM &

#BulkFileLoader:
cd /pacs/test/BulkFileLoader/

nohup java -jar -Dspring.config.location=/pacs/test/BulkFileLoader/application.properties BulkFileLoader-11.0.jar &


#BulkLoaderRestWebServices:
cd /pacs/test/BulkLoaderRestWebServices/

nohup java -jar -Dspring.config.location=/pacs/test/BulkLoaderRestWebServices/application.properties BulkLoaderRestWebServices-11.0.jar &


#PrepaidCreateAPI:
cd /pacs/PrepaidCreateAPI/

nohup /home/ec2-user/test/java-11-openjdk-11.0.13.0.8- 1.el7_9.x86_64/bin/java -jar PrepaidCreate.jar &

#PretoPostAPI:
cd /pacs/PrepaidCreateAPI/

nohup java -jar -Dspring.config.location=.application.properties PretoPostAPI.jar &