variable "project" {
   default="test"
}

variable "locust_master_instance_type" {
     default="ecs.g5.16xlarge"
}
variable "locust_master_image_id" {
     default=""
}
variable "locust_master_internet_charge_type" {
     default="PayByBandwidth"
}
variable "locust_master_system_disk_category" {
     default="cloud_efficiency"
}
variable "locust_master_system_disk_size" {
     default=0
}
variable "locust_master_instance_name" {
     default="test"
}
variable "locust_master_vswitch_id" {
     default=""
}
variable "locust_master_internet_max_bandwidth_out" {
     default= 0
}
variable "locust_master_security_groups" {
    type    = "list"
    default = []
}


variable "locust_slave_instance_type" {
     default="ecs.g5.16xlarge"
}
variable "locust_slave_image_id" {
     default=""
}
variable "locust_slave_internet_charge_type" {
     default="PayByBandwidth"
}
variable "locust_slave_system_disk_category" {
     default="cloud_efficiency"
}
variable "locust_slave_system_disk_size" {
     default=0
}
variable "locust_slave_instance_name" {
     default="test"
}
variable "locust_slave_vswitch_id" {
     default=""
}
variable "locust_slave_internet_max_bandwidth_out" {
     default= 0
}
variable "locust_slave_security_groups" {
    type    = "list"
    default = []
}
variable "locust_slave_instance_count" {
    default= 0
}
