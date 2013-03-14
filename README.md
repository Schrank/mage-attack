#mage-attack

Build a tool based on behat/mink to "attack" a magento installation aka check for the most common problems

## Implemented:
* local.xml and config.xml is not readable
* check for
* * LICENSE.txt
* * LICENSE.html
* * LICENSE_AFL.txt
* * RELEASE_NOTES.txt

## Installation and Usage

1. Follow the installation instructions for MageBehat https://github.com/magento-hackathon/MageBehat
2. Install this extension
3. Run behat: `php -f shell/behat.php`

Get something like:

    Feature: local.xml is not readable

      Scenario: local.xml is not readable  # features/bootstrap/not_readable_local_xml.feature:3
        Given I am on "/app/etc/local.xml" # FeatureContext::visit()
        Then I should get a "403" error    # FeatureContext::iShouldGetAError()

    1 Szenario (1 bestanden)
    2 Schritte (2 bestanden)
    0m0.049s