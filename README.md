# quick-lab

This is a quick and dirty way to get some ec2 micros rolling and distribute keys per user to a bastion. This isn't the prettiest way to go about it, but is a great way to get students slamming on keyboards quickly.

Tools used: [Terraform](https://www.terraform.io/), and [Terraform-inventory](https://github.com/adammck/terraform-inventory)

Update main.tf to your situation, throw your keys into env vars and:

```
terraform init
terraform apply
ansible-playbook -i terraform-inventory lab.yml
```

This still has some filler values from a talk I gave to a LUG. Sorry!
