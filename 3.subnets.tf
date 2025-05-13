#For IOWA
resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.97.255.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "app01" {
  name                     = "app01"
  ip_cidr_range            = "10.10.255.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}

#For Tokyo
resource "google_compute_subnetwork" "tokyo1" {
  name                     = "tokyo1"
  ip_cidr_range            = "10.97.22.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo2" {
  name                     = "tokyo2"
  ip_cidr_range            = "10.97.23.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyoapp01" {
  name                     = "tokyoapp01"
  ip_cidr_range            = "10.10.22.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}

#For Sao Paulo
resource "google_compute_subnetwork" "saopaulo1" {
  name                     = "saopaulo"
  ip_cidr_range            = "10.97.48.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "saopauloapp01" {
  name                     = "saopauloapp01"
  ip_cidr_range            = "10.10.48.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}