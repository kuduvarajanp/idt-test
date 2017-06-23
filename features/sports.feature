Feature: IDT sanity test

@live
Scenario Outline: Charts on live(news and sports site)

	Given I visit <url>
	Then I should see a id <chartid>
	And I should see the title <text>

	Examples:
	|url|chartid|text|
	|http://www.bbc.co.uk/news/uk-politics-39056786|ns_chart_Sweden_asylum|Asylum applicants in Sweden|
	|http://www.bbc.co.uk/sport/olympics/37085511|ns_chart_GBvChinamedalstable|Medals table final positions|


@stage
Scenario Outline: Charts on stage

	Given I visit <url>
	Then I should see a id <chartid>
	And I should see the title <text>

	Examples:
	|url|chartid|text|
	|http://www.stage.bbc.co.uk/news/uk-39925868|ns_chart_Sweden_asylum|Asylum applicants in Sweden|


@live
Scenario Outline: Quizzes on live(news and sports site)

	Given I visit <url>
	Then I should see a Quiz with title <text>

	Examples:
	|url|text|
	|http://www.bbc.co.uk/news/magazine-38997118|Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?|
	# |http://www.bbc.co.uk/sport/40137331|bid to win the Indy 500 at his first attempt came to a disappointing end|

