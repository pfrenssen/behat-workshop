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
  And I should see 3 news articles
