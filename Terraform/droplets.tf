resource "digitalocean_droplet" "droplet" {
  count = 3
  image = "ubuntu-20-04-x64"
  name = "www-1"
  region = "sfo3"
  size = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.Terraform.id
  ]


  # connection {
  #     host = self.ipv4_address
  #     user = "root"
  #     type = "ssh"
  #     private_key = file(var.pvt_key)
  #     timeout = "2m"
  #   }
}