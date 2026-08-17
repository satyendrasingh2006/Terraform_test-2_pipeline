module "resource_group" {
    source = "../chield_module/resource_group"
    rgs = var.rgs
}

module "storage_account" {
    depends_on = [ module.resource_group ]
  source = "../chield_module/storage_account"
  stgs = var.stgs
}