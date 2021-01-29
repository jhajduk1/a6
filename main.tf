terraform {
  required_providers {
    azurerm = ">= 2.10.0"
  }
}

variable "subid" {
}
variable "appid" {
}
variable "appsec" {
}
variable "tid" {
}
variable "tid1" {
}

tid1 = "helloooooooooooo"

provider "azurerm" {
  subscription_id = var.subid
  client_id       = var.appid
  client_secret   = var.appsec
  tenant_id       = var.tid
  features {}
}

resource "azurerm_resource_group" "jjjjj-rg" {
  name     = "jjjjj-rg"
  location = "North Central US"
}

resource "azurerm_resource_group" "ttttt-rg" {
  name     = var.tid1
  location = "North Central US"
}