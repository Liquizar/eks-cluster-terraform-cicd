###### root/kubernetes.tf

resource "kubernetes_deployment" "project" {
  metadata {
    name = "terraform-project"
    labels = {
      test = "MyprojectApp"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        test = "MyprojectApp"
      }
    }
    template {
      metadata {
        labels = {
          test = "MyprojectApp"
        }
      }
      spec {
        container {
          image = "nginx:1.7.8"
          name  = "project"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "project" {
  metadata {
    name = "terraform-project"
  }

  spec {
    selector = {
      test = "myprojectApp"
    }
    port {
      port        = 80
      target_port = 80
      node_port   = 30010
    }

    type = "LoadBalancer"
  }
}
