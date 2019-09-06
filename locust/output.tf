
data "alicloud_instances" "locust_master" {
  name_regex = "${var.locust_master_instance_name}-${var.project}"
  status     = "Running"
}

output "locust_master_public_ip" {
  value = data.alicloud_instances.locust_master.instances.*.public_ip
}

data "alicloud_instances" "locust_slaves" {
  name_regex = "${var.locust_slave_instance_name}-${var.project}"
  status     = "Running"
}

output "locust_slaves_public_ip" {
  value = data.alicloud_instances.locust_slaves.instances.*.public_ip
}
