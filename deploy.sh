aws cloudformation deploy --template-file stacks/network.yml --stack-name plato-network
aws cloudformation deploy --template-file stacks/bastion-host.yml --stack-name plato-bastion --parameter-override NetworkVPCStack=plato-network SSHKeyName=aws_id_rsa  --capabilities CAPABILITY_IAM
aws cloudformation deploy --template-file stacks/lamp.yml --stack-name plato-lamp --parameter-override NetworkVPCStack=plato-network BastionHostStack=plato-bastion  SSHKeyName=aws_id_rsa DatabasePassword=P4ssw0rdR3pettWice  --capabilities CAPABILITY_IAM
