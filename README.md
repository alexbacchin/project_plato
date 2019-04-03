# Project Plato

One more LAMP stack on AWS using CloufFormation templates


## Template Files

The solution was split in 3 separate CloudFormation templates

1. Network - all network components are provisioned
2. Bastion - provision the bastion host and keep it running
3. Lamp - provision the lampstack on the network

## Architecture 

The environment was created to be high available, secure and cost effective.

![Architecture](https://github.com/alexbacchin/project_plato/raw/master/img/2az.jpg)

* **Highly Available** - it can atomatically recovers from server failure to whole AWS Availability Zone failure. 
The approach is to deploy the stack accross 2 AWS avaiability zones, 4 subnets (public and private). Application load balancer to manage application traffic. 
Finally AWS EC2 instance will be deployed from instace profile and auto scaling group, supporting failures and horizontal scallability  

* **Security** - Bastion host is the only point available to interact with the backend. As well as, separation of network traffic between public and priviate, with subnets and NAT gateways. Network ACLs and security groups will allow only the expected traffic to flow among the resources.

* **Cost control** - On demand scalability:the application will scale horizontally b. MySQL is hosted on AWS RDS serverless, which will also scale on demand 



## Future improvements

These are alternatives that can be done on this stack.

* **Containers** - the EC2 instances can be replaced by containers in some scenarios if the application is compatible.
* **Restrict outbound traffic** - enhance security groups and NACLs to control the outgoing traffic.

 
