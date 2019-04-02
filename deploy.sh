aws cloudformation deploy --template-file stacks/network.yml --stack-name plato-stack 
aws cloudformation deploy --template-file stacks/bastion-host.yml --stack-name plato-ssh --parameter-override NetworkVPCStack=plato-stack SSHKeyName=aws_id_rsa  --capabilities CAPABILITY_IAM
