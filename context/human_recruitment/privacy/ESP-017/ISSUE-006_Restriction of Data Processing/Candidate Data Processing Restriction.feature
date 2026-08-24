Feature: Candidate Data Processing Restriction

  Scenario: Candidate restricts AI automated scoring on their profile
    Given candidate "Marcus" has an active profile in the recruitment portal
    When "Marcus" enables "Restrict AI Profile Scoring" in his privacy settings
    Then the system flags his profile to bypass automated ranking algorithms
    And routes his profile exclusively to human recruiters for manual evaluation