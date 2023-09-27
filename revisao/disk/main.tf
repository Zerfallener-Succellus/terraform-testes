resource "google_compute_disk" "disk" {
  for_each = var.secondary_disk
  labels = {
    "teste" = "labels"
  }
  name = each.key
  type = each.value.type
  zone = var.disk_zone
  size = each.value.size
}

resource "google_compute_attached_disk" "attachement_disk" {
  for_each = var.secondary_disk
  disk = google_compute_disk.disk[each.key].id 
  instance = var.instance_id
}