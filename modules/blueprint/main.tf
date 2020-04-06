resource "xxx" "default" {
  name = "${local.name}"
  tags = "${merge(local.tags, map("Name", "${local.name}"))}"
}
