Feature: Business Justification and Policy Compliance Enforcement

  Scenario: Mandatory justification and policy agreement prior to accessing sensitive data
    Given hiring manager "Mark" requests access to candidate "Sarah"'s salary expectations and demographic attributes
    When the system prompts "Mark" for a valid business reason
    And "Mark" selects "Offer Generation Calibration" and acknowledges the Data Protection Policy
    Then the system grants temporary access to the requested sensitive fields for 60 minutes
    And binds the access session to the acknowledged privacy policy