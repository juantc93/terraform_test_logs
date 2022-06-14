terraform {
  backend "gcs" {
    bucket = "tfstatelogsfalabellaprueba" # Nombre del bucket para guardar el tfstate con la configuracion actual de la infraestructura
    prefix = "prueba"                     # prefijo de terraform del proyecto
  }
}