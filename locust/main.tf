data "alicloud_images" "locust_base_image_id" {
  name_regex = "locust-base-image"
}

resource "alicloud_instance" "locust_master" {
  image_id                    = data.alicloud_images.locust_base_image_id.images.0.id
  internet_charge_type        = var.locust_master_internet_charge_type
  instance_type               = var.locust_master_instance_type
  system_disk_category        = var.locust_master_system_disk_category
  system_disk_size            = var.locust_master_system_disk_size
  security_groups             = var.locust_master_security_groups
  instance_name               = "${var.locust_master_instance_name}-${var.project}"
  vswitch_id                  = var.locust_master_vswitch_id
  internet_max_bandwidth_out  = var.locust_master_internet_max_bandwidth_out
}
resource "alicloud_instance" "locust_slaves" {
  count                       = var.locust_slave_instance_count
  image_id                    = data.alicloud_images.locust_base_image_id.images.0.id
  internet_charge_type        = var.locust_slave_internet_charge_type
  instance_type               = var.locust_slave_instance_type
  system_disk_category        = var.locust_slave_system_disk_category
  system_disk_size            = var.locust_slave_system_disk_size
  security_groups             = var.locust_slave_security_groups
  instance_name               = "${var.locust_slave_instance_name}-${var.project}-${count.index +1 }"
  vswitch_id                  = var.locust_slave_vswitch_id
  internet_max_bandwidth_out  = var.locust_slave_internet_max_bandwidth_out
}