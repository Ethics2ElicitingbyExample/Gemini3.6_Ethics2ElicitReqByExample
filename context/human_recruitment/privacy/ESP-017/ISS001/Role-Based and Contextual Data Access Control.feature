Feature: Role-Based and Contextual Data Access Control

  Scenario: Authorized recruiter accesses candidate profile for active job requisition
    Given recruiter "Jane" is assigned to the "Senior AI Engineer" hiring team
    And candidate "John" has applied to the "Senior AI Engineer" requisition
    When "Jane" attempts to view "John"'s resume and evaluation score
    Then the AI recruitment system grants access to the requested data
    And logs the access context as "Active Candidate Evaluation"

  Scenario: Unauthorized employee attempts to view unassigned candidate data
    Given employee "Bob" is not assigned to the "Senior AI Engineer" hiring team
    When "Bob" attempts to search or view candidate "John"'s profile
    Then the system denies access
    And displays an "Insufficient Permissions" notification