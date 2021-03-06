resource "jenkins_job" "manager" {
  name   = var.job_name
  folder = var.job_folder

  template = templatefile("${path.module}/template.tftpl", {
    description      = var.job_description,
    git_remote       = var.git_remote,
    credentials_id   = var.credentials_id,
    jenkinsfile_path = var.jenkinsfile_path,
  })
}
