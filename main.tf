resource "aws_route53_zone" "this" {
  name              = var.name
  comment           = var.comment
  # delegation_set_id = var.delegation_set_id
  # force_destroy     = var.force_destroy

  tags = merge (
    {
      Name          = var.name
      Environment   = "testing-thhis"
      Description   = var.comment
    }
    # var.tags
  )
}
