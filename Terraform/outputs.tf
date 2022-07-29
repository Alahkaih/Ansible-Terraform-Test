output "droplet_ip" {
    value       = digitalocean_droplet.droplet[*].ipv4_address
    description = "ip for droplet VM"
}