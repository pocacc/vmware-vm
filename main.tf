module "virtual_machine" {
  
  source = "github.com/pocacc/vmware-modules/vsphere_virtual_machine/"

  name = var.name

  num_cpus = var.num_cpus
  memory   = var.memory

  disk_size  = var.disk_size

  host_name = var.name
}