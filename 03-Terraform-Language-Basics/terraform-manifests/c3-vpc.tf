# Resource: VPC
resource "google_compute_network" "myterravpc" {
  name = "terravpc1"
  auto_create_subnetworks = false   
}

# Resource: Subnet
resource "google_compute_subnetwork" "myterrasubnet" {
  name = "terrasubnet1"
  region = "us-central1"
  ip_cidr_range = "10.128.0.0/20"
  network = google_compute_network.myterravpc.id 
}