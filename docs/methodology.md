# Lab methodology (high level)

Authorized testing only: isolated VMs, written permission, no production targets.

## Phases

1. **Scope and rules of engagement**  
   Confirm IP ranges, time window, and what “success” means (usually a report, not persistent access).

2. **Reconnaissance**  
   Identify hosts and services that are in scope. Record versions for later mapping to known issue classes. Prefer vendor and lab documentation over copy-paste runbooks.

3. **Validation**  
   Confirm that a finding is real and relevant to the lab objective. Stop at evidence that would appear in a professional report (affected service, risk, recommended fix).

4. **Reporting**  
   Write asset, issue, impact, and remediation. Include screenshots from the lab only.

5. **Remediation follow-up**  
   Re-test after patches, configuration hardening, and service cleanup.

## Reporting template

- Title and severity
- Affected host / service
- Evidence (lab screenshot or log excerpt with secrets removed)
- Recommended fix (patch, disable, network control)
- Status (open / fixed)

No exploit modules, payloads, or reproduction commands are documented in this repository.
