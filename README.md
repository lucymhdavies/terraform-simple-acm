# terraform-simple-acm
Wrapper around ACM stuff.

Exists partially because I'm lazy, and don't want to have to define this stuff every time I need it.

But mostly, it exists because I want to play with Terraform modules.

Works on the assumption that you're using Route53 for DNS verification


## Usage

```
module "simple_acm" {
  # Source the module from GitHub
  source = "git::https://github.com/lucymhdavies/terraform-simple-acm.git?ref=master"

  # Domain name and hosted zone name
  domain_name = "foo.example.com"
  zone_id    = "${data.aws_route53_zone.example-com.zone_id}"

  # Optional
  providers = {
    # Use us-east-1 if you need this for CloudFront
    aws = "aws.us-east-1"
  }
}


resource foo "foo" {
  acm_certificate_arm = "${module.simple_acm.arn}"
}
```

## Outputs

`arn` - arn of the ACM certificate

## Limitations

Apparently, when you create a cert with ACM, it's not available to use immediatelly.

In my case, just terraforming a second time works
