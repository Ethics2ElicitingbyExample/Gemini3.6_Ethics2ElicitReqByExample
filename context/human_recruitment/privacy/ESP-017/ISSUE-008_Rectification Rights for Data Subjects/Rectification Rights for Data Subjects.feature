Feature: Candidate Self-Service Profile Data Rectification

  Scenario: Candidate amends incorrect profile information
    Given candidate "Lucas" accesses his candidate dashboard
    When "Lucas" modifies his years of experience from 3 years to 5 years
    Then the system updates his record in the primary database
    And triggers an automated re-indexing of his AI skill-matching score using the rectified data