Feature: Data Handler and Controller Management

  Scenario: Attribute data controller and processor roles upon candidate application
    Given candidate "Amina" submits her application on the career portal
    When the system stores her personal attributes in encrypted storage
    Then the system records "Enterprise HR Department" as the Data Controller
    And delegates automated candidate matching tasks solely to verified Data Processors