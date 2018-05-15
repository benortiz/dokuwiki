resource "digitalocean_droplet" "dokuwiki_docker" {
  image = "30970148"
  name = "dokuwiki"
  region = "sfo2"
  size = "1gb"
  backups = true
  user_data = "${file("user_data.sh")}"
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]

  connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
  }
}
