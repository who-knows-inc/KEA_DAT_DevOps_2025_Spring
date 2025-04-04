import requests
from bs4 import BeautifulSoup

html = requests.get("https://en.wikipedia.org/wiki/List_of_Monty_Python_projects").text

html_parsed = BeautifulSoup(html, features="lxml")

tags = html_parsed.find("div", { "class": "mw-parser-output" })

projects = {}
current_category = None

for tag in tags:
    if tag.name == "div" and "mw-heading" in tag.get("class", []):
        current_category = tag.text.replace("[edit]", "")
        projects[current_category] = []
    elif tag.name == "ul":
        for li in tag.find_all("li"):
            projects[current_category].append(li.text)

del projects["References"]
del projects["Notes"]
del projects["Further reading"]

from pprint import pprint
pprint(projects)
