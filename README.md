# YARWiki
Yes, Yet Another Ruby-based Wiki. I love wikis. And I have been using them for a number of years. And through wikis I met ruby and ruby-on-rails, so this association is pretty natural to me.

So, when I decided I needed a more efficient wiki and improve my ruby-on-rails skills (specially at the frontend, where ruby-on-rails has evolved quite rapidly), one thing became obvious to me: why not writing a wiki from scratch in ruby(-on-rails)?

**Note:** I've got a similar effort running for a long time, but using **go** [here](https://github.com/jbonnet/gwiki).

## Features
As this wiki's user, I want to be able to:

1. Quickly starting taking notes, without a new page having to be sent from the server;
2. Quickly taking a look at the most recent notes taken;
3. Have a powerfull search feature;

These very highlevel features imply the following lowerlever user stories:

As this wiki's user, I want to be able to:
1. Click on a link or button and start writing the title/body of a new post, **so that** I can start writing the post without having to scroll and click the **Edit** link;
2. See the most recently written post on top of the list of posts, **so that** previous posts are also avalilabe to be seen;
3. Scroll to see older posts, without having to click a 'next page' link, **so that** access to older posts is faster;
4. Click one specific post to see the whole post's body, **so that** I do not have to wait for an entire page load;
5. Double click one specific post to edit it, **so that** I do not have to click a specific link or button to edit the post;

All these User Stories show that, instead of a pure Wiki, what we're really for here is a **Blog** like interface, with interconnection between pages or posts made with wiki pages-like names.


## Concepts
This section explains the concepts used.

* **Pages:** wikis are a collection of interlinked pages;
* **Slug:** an HTTP-safe string that is obtained by transforming another string (e.g., the page's title, like `Hello, World!` would give us `hello-world`)

## Design
This section discusses the design of some of the features we want for this wiki.

### How to identify a wiki page
When accessing a single wiki page, we'll want to uniquely identify it (a primary key, in database talk). We see two different options for that, with pros and cons:

1. Use an existing attribute of the page, such as its title (or its slug):
    * Pros: it is easier to recognize a page when you get just its URL (e.g., `https://example.com/my-fist-page`);
    * Cons: the page history and connections are lost if you change the title of the page;
1. Use an extra attribute, such as an id:
    * Pros: you can change the page's title, but their links remain the same;
    * Cons: it is harder to recognise a page, specially if UUIDs are used;

Trying to get the most of both solutions, we may:

1. Use an id, allowing the change of the name of page without loosing their connections;
2. Use a slug from the page title to select a specific page;

This means we'll have a `primary key` on the `id` field and a `unique` restriction on the `slug` field, calculated from the `title` field.

### One clic to see the whole page, two to edit it
### Add new page on top of the stream
### Continuous scroll

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

