# Let them search

Users are crazy about your product and wish that they could search for more content than just programming. 

**Type**: Group work

**Deadline**: See the [Suggested Timeline](#suggested-timeline) section.

**Motivation**: Use logging to understand how users are actually using your system -> Learn to scrape and index webpages. 

---

## Requirements

Use logging to get insight into what users are searching for. Use that knowledge to know what content to scrape.

Scrape and index webpages by adding them to a database. It doesn't have to be the same database as the one for your users. 

---

## Suggested timeline

Here is a proposed timeline:

1. **Week 1**: Brainstorm how to web scrape. Try out different tools. Agree on a tool.

2. **Week 2**: Log to see what the users are searching for.

3. **Week 3**: Scrape the content and index it. Deployment is optional: Decide whether to run the script locally or on a server. 

---

## Web crawling scope

You will not be able to scrape the entire internet and you must select few websites. 

You should log the searches to see what the users are searching for.

You will not be evaluated by the scale of your indexing operation but the scalability of your solution. 

---

## How to log?

Do not overengineer this task.

To implement a serious log stack such ELK is time consuming and requires a lot of resources such as memory. The same for other industry standards like Datadog. 

Logs can be achieved simply by writing lines to a file or INSERT statements in a SQLite database. Next week, we will talk about formats for logging.

Look into leveraging the logging system in your framework / language if it requires minimal work. For instance, `.NET Core` has an excellent built-in logging system.

