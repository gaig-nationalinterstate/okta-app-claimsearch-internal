resource "okta_app_saml" "ClaimSearch" {
  assertion_signed               = "false"
  audience                       = "PasswordVault"
  authn_context_class_ref        = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar            = "false"
  default_relay_state            = ""
  destination                    = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  digest_algorithm               = "SHA256"
  hide_ios                       = "true"
  hide_web                       = "true"
  honor_force_authn              = "true"
  idp_issuer                     = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment            = "false"
  label                          = var.env == "prd" ? "ClaimSearch" : "ClaimSearch ${var.env}"
  recipient                      = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  response_signed                = "true"
  saml_signed_request_enabled    = "false"
  saml_version                   = "2.0"
  signature_algorithm            = "RSA_SHA256"
  sso_url                        = "https://${var.url}/sso/saml2/0oa1v0yx8s8YqMHqG0h8"
  status                         = "ACTIVE"
  subject_name_id_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template       = "$${user.userName}"
  user_name_template             = "$${source.samAccountName}"
  user_name_template_type        = "BUILT_IN"
}

# Create Claim Search Group
resource "okta_group" "ClaimSearch_Users" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch_Users"
}

# Group Assignment - Assign ClaimSearch_Users group to ClaimSearch App
resource "okta_app_group_assignment" "ClaimSearch" {
  app_id   = okta_app_saml.ClaimSearch.id
  group_id = okta_group.ClaimSearch_Users.id
}

# Group Rule
resource "okta_group_rule" "ClaimSearch_Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Domain\")"
  group_assignments = [okta_group.ClaimSearch_Users.id]
  name              = "Add users to ClaimSearch group"
  status            = "ACTIVE"
}