resource "aws_route53_record" "mongodb-record" {
  zone_id = data.aws_route53_zone.mongodb-zone.zone_id
  name = "mongodb.epam.one"
  type = "A"
  ttl  = "300"
  records = [aws_instance.MongoDB.public_ip]
}