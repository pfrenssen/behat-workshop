Feature: News overview
  In order to have access to the latest news articles
  As an anonymous user
  I want to see a list of news articles sorted by date

@api
Scenario: Anonymous user can see the news overview
  Given "News article" content:
  | title     | body                |
  | Article 1 | The first article.  |
  | Article 2 | The second article. |
  | Article 3 | The third article.  |

  Given I am not logged in
  When I visit "news"
  Then I should see the heading "News"
  And I should see the link "Article 1"
  And I should see the text "The first article."
  And I should see the link "Article 2"
  And I should see the text "The second article."
  And I should see the link "Article 3"
  And I should see the text "The third article."
