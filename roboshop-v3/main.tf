module "components" {

  for_each = var.component

  source        = "./module"
  sg            = var.sg
  zone_id       = var.zone_id
  name          = each.value["name"]
  instance_type = each.value["instance_type"]
}


