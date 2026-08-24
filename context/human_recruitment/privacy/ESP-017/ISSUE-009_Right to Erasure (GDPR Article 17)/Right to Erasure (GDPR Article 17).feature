Feature: GDPR Article 17 Compliant Right to Erasure

  Scenario: Permanent erasure of candidate profile upon request
    Given candidate "Chloe" submits a "Delete My Account and Personal Data" request
    When the data controller approves the request under GDPR Article 17
    Then the system permanently removes all personal identifiers, resumes, and evaluation scores from active storage and AI model features
    And dispatches an automated confirmation of erasure to "Chloe"