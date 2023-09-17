variable "name" {
  type    = string
}

variable "num_cpus" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 2048
}

variable "disk_size" {
  type    = number
  default = 20
}

variable "run_once_command_list" {
  type    = list(string)
  default = [
    "dnf update -y", 
    "dnf upgrade -y",
    "dnf install -y httpd",
    "systemctl start httpd",
    "systemctl enable --now httpd",
    "firewall-cmd --permanent --zone=public --add-service=http",
    "firewall-cmd --reload",
    "firewall-cmd --list-all --zone=public",
    "rm /var/www/html/index.html",
    "cat <<EOF | tee index.html\n<html><head><title>Welcome to my test site!</title></head><body>This site is for testing purposes only</body></html>EOF"
  ]
}