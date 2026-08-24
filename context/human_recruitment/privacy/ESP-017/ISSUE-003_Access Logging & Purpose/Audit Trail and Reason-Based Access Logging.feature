Feature: Audit Trail and Reason-Based Access Logging

  Scenario: Comprehensive logging of data access events
    Given HR auditor "Elena" views candidate "Carlos"'s profile and evaluation score
    When the system renders the profile screen
    Then the system generates an immutable audit record containing:
      | Field             | Value                           |
      | Timestamp         | Current System DateTime         |
      | User ID           | Elena_HR_402                    |
      | Target Subject ID | Candidate_Carlos_891            |
      | Action            | View Full Profile               |
      | Stated Purpose    | Pre-employment Background Check |