# YARWiki
Yes, Yet Another Ruby-based Wiki. I love wikis. And I have been using them for a number of years. And through wikis I met ruby and ruby-on-rails, so this association is pretty natural to me.

So, when I decided I needed a more efficient wiki and improve my ruby-on-rails skills (specially at the frontend, where ruby-on-rails has evolved quite rapidly), one thing became obvious to me: why not writing a wiki from scratch in ruby(-on-rails)?

**Note:** I've got a similar effort running for a long time, but using **go** [here](https://github.com/jbonnet/gwiki).

## Features
As this wiki user, I want to be able to:

1. Quickly starting taking notes, without a new page having to be sent from the server;
2. Quickly taking a look at the most recent notes taken;
3. Have a powerfull search feature;

## Concepts
This section explains the concepts used.

* **Pages:** wikis are a collection of interlinked pages;

## Design
### How to identify a wiki page
When accessing a single wiki page, we'll want to uniquely identify it (a primary key, in database talk). We see two different options for that, with pros and cons:

1. Use an existing attribute of the page, such as its titlei (or its slug):
    * Pros: it is easier to recognize a page when you get just its URL (e.g., `https://example.com/my-fist-page`);
    * Cons: the page history and connections are lost if you change the title of the page;
1. Use an extra attribute, such as an id:
    * Pros: you can change the page's title, but their links remain the same;
    * Cons: it is harder to recognise a page, specially if UUIDs are used;
## Possible items to deal with later on

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

## References

