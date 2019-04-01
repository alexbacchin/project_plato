aws cloudformation deploy --template-file lamp_stack.cform --stack-name plato-stack 
aws cloudformation describe-stack-events --stack-name plato-stack 