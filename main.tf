resource "google_compute_instant_snapshot_iam_policy" "compute_instant_snapshot_iam_policies" {
  for_each = var.compute_instant_snapshot_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  project     = each.value.project
  zone        = each.value.zone
}

