deploy:
	aws cloudformation deploy --capabilities CAPABILITY_IAM --template-file ./template.yml --stack-name iot-endpoint

delete:
	aws cloudformation delete-stack --stack-name iot-endpoint
