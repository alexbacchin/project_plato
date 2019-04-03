aws cloudformation delete-stack --stack-name plato-lamp
aws cloudformation wait stack-delete-complete --stack-name plato-lamp
aws cloudformation delete-stack --stack-name plato-bastion
aws cloudformation wait stack-delete-complete --stack-name plato-bastion
aws cloudformation delete-stack --stack-name plato-network
aws cloudformation wait stack-delete-complete --stack-name plato-network