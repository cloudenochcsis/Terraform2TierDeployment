# NAT Gateways & Routing Tables

## 1. Internet Gateway (IGW)
An Internet Gateway is attached to the VPC to enable bidirectional internet access for public subnets hosting the ALB and Bastion.

## 2. Dual NAT Gateways for Fault Tolerance
One NAT Gateway is provisioned in each public subnet. Private subnets route egress traffic (`0.0.0.0/0`) through their respective AZ's NAT Gateway.


