aws cloudformation deploy --template-file stacks/network.yml --stack-name plato-stack 
aws cloudformation describe-stack-events --stack-name plato-stack 