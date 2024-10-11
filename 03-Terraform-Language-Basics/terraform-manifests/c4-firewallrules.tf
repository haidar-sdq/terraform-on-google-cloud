resource "google_compute_firewall" "myterrafw_ssh" {
  name    = "fw-allow-ssh"
  network = google_compute_network.myterravpc.name

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  target_tags = ["fw-ssh-ingress"]
  direction = "INGRESS"
  priority = 1000
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "myterrafw_http" {
  name    = "fw-allow-http"
  network = google_compute_network.myterravpc.name

  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  target_tags = ["fw-http-ingress"]
  direction = "INGRESS"
  priority = 1000
  source_ranges = ["0.0.0.0/0"]
}
