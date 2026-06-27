# ============================================================
# Variables
# ============================================================

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Primary Azure region"
  type        = string
  default     = "uksouth"
}

variable "location_code" {
  description = "Region code used in resource names"
  type        = string
  default     = "uks"
}

variable "entity" {
  description = "Entity code — company + region identifier"
  type        = string
  default     = "rs"
}

variable "environment" {
  description = "Environment code"
  type        = string
  default     = "d"
}

variable "tags" {
  description = "Default tags applied to all resources"
  type        = map(string)
  default     = {}
}