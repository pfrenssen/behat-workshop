<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * @Then I should see :number news articles
   */
  public function assertNewsArticleCount($number) {
    $this->assertSession()->elementsCount('css', 'div.node-news-article', $number);
  }

}
