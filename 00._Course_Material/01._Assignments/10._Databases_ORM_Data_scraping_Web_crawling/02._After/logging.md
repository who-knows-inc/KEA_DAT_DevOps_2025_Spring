# Logging

**Type**: Group work

**Deadline**: This is part of a trilogy (logging + let them search + lecture on logging). Spend the first week considering it. Then logging. Then scraping.  

**Motivation**: Use logging to see how users are actually using 

---

## Search query logging

This task is a companion assignment to the `let them search` assignment.

Use logging to get insight into what users are searching for. Use that knowledge to know what content to scrape.

---

## [Optional] Error logging

It makes sense to log errors instead of just throwing them.

If time is sparse, then skip this or do it for one place to showcase that you know how to.

---

## How to log?

Do not overengineer this task.

To implement a serious log stack such ELK is time consuming and requires a lot of resources such as memory. The same for other industry standards like Datadog. 

Logs can be achieved simply by writing lines to a file or INSERT statements in a SQLite database. Next week, we will talk about formats for logging.

Look into leveraging the logging system in your framework / language if it requires minimal work. For instance, `.NET Core` has an excellent built-in logging system.

