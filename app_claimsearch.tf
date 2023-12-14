resource "okta_app_saml" "natl-claimsearch" {
  accessibility_self_service = "false"
  assertion_signed           = "true"

  attribute_statements {
    name      = "accessGroup"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["appuser.accessGroup"]
  }

  attribute_statements {
    name      = "custCode"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["appuser.custCode"]
  }

  attribute_statements {
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "firstName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "lastName"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.firstName"]
  }

  attribute_statements {
    name      = "phone"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["3306598900"]
  }

  attribute_statements {
    name      = "ssoId"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.email"]
  }

  attribute_statements {
    name      = "title"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    type      = "EXPRESSION"
    values    = ["user.title"]
  }

  audience                    = "${var.audience}"
  authn_context_class_ref     = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  auto_submit_toolbar         = "false"
  default_relay_state         = "${var.relay_state_url}"
  destination                 = "${var.url}"
  digest_algorithm            = "SHA256"
  hide_ios                    = "false"
  hide_web                    = "false"
  honor_force_authn           = "true"
  idp_issuer                  = "http://www.okta.com/$${org.externalKey}"
  implicit_assignment         = "false"
  label                       = "ClaimSearch"
  recipient                   = "${var.url}"
  response_signed             = "true"
  saml_signed_request_enabled = "false"
  saml_version                = "2.0"
  signature_algorithm         = "RSA_SHA256"
  sso_url                     = "${var.url}"
  status                      = "ACTIVE"
  subject_name_id_format      = "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified"
  subject_name_id_template    = "$${user.userName}"
  user_name_template          = "$${source.login}"
  user_name_template_type     = "BUILT_IN"
}

# Create Claim Search Groups
resource "okta_group" "ClaimSearch-Admin" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Admin"
}

resource "okta_group" "ClaimSearch-Claims" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Claims"
}

resource "okta_group" "ClaimSearch-ClaimsAdjusters" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ClaimsAdjusters"
}

resource "okta_group" "ClaimSearch-ClaimsAdmin" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ClaimsAdmin"
}

resource "okta_group" "ClaimSearch-Compliance" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Compliance"
}

resource "okta_group" "ClaimSearch-ItAndIntOps" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-ItAndIntOps"
}

resource "okta_group" "ClaimSearch-SupervisorAndAbove" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-SupervisorAndAbove"
}

resource "okta_group" "ClaimSearch-Underwriting" {
  description = "ClaimSearch Users for Verisk Single Sign-On"
  name        = "ClaimSearch-Underwriting"
}

# Group Assignment - Assign ClaimSearch groups to ClaimSearch Apps
resource "okta_app_group_assignment" "okta-claimsearch-admin" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.claimsearch_admin.id
  priority = "0"
  profile  = "{\"accessGroup\":\"Admin\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-claims" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-claims.id
  priority = "6"
  profile  = "{\"accessGroup\":\"CLAIMS\",\"custCode\":\"V50100001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-claimsadjusters" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-claimsadjusters.id
  priority = "1"
  profile  = "{\"accessGroup\":\"CLAIMS ADJUSTERS\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-claimsadmin" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-claimsadmin.id
  priority = "2"
  profile  = "{\"accessGroup\":\"CLAIMS ADMIN\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-compliance" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-compliance.id
  priority = "3"
  profile  = "{\"accessGroup\":\"COMPLIANCE\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-itandintops" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-itandintops.id
  priority = "4"
  profile  = "{\"accessGroup\":\"IT AND INTERNAL OPERATIONS\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-supervisorandabove" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-supervisorandabove.id
  priority = "5"
  profile  = "{\"accessGroup\":\"SUPERVISOR AND ABOVE\",\"custCode\":\"N09000001\"}"
}

resource "okta_app_group_assignment" "okta-claimsearch-underwriting" {
  app_id   = okta_app_saml.natl-claimsearch.id
  group_id = okta_group.okta-claimsearch-underwriting.id
  priority = "7"
  profile  = "{\"accessGroup\":\"UNDERWRITING\",\"custCode\":\"V50100001\"}"
}

# Group Rules to add members of AD groups to Okta groups
resource "okta_group_rule" "ClaimSearch-Admin-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Admin\")"
  group_assignments = [okta_group.ClaimSearch-Admin.id]
  name              = "Add users to ClaimSearch Admin group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Claims-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Claims\")"
  group_assignments = [okta_group.ClaimSearch-Claims.id]
  name              = "Add users to ClaimSearch Claims group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ClaimsAdjusters-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ClaimsAdjusters\")"
  group_assignments = [okta_group.ClaimSearch-ClaimsAdjusters.id]
  name              = "Add users to ClaimSearch ClaimsAdjusters group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ClaimsAdmin-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ClaimsAdmin\")"
  group_assignments = [okta_group.ClaimSearch-ClaimsAdmin.id]
  name              = "Add users to ClaimSearch ClaimsAdmin group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Compliance-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Compliance\")"
  group_assignments = [okta_group.ClaimSearch-Compliance.id]
  name              = "Add users to ClaimSearch Compliance group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-ItAndIntOps-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_ItAndIntOps\")"
  group_assignments = [okta_group.ClaimSearch-ItAndIntOps.id]
  name              = "Add users to ClaimSearch ItAndIntOps group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-SupervisorAndAbove-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_SupervisorAndAbove\")"
  group_assignments = [okta_group.ClaimSearch-SupervisorAndAbove.id]
  name              = "Add users to ClaimSearch SupervisorAndAbove group"
  status            = "ACTIVE"
}

resource "okta_group_rule" "ClaimSearch-Underwriting-Rule" {
  expression_value  = "isMemberOfGroupNameContains(\"Okta_ClaimSearch_Underwriting\")"
  group_assignments = [okta_group.ClaimSearch-Underwriting.id]
  name              = "Add users to ClaimSearch Underwriting group"
  status            = "ACTIVE"
}