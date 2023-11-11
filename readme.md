# Readme for FitNesse.org web site

## Philosophy
FitNesse is the fully integrated standalone wiki, and acceptance testing framework. It is used by teams to collaboratively define the behavior of software. FitNesse.org is the website for FitNesse users. It is written in FitNesse and run using FitNesse.

Recently we decided to put the site under source control as a way to ensure better maintenance. In addition to putting the content under source control, this process will make it easier for people working on plugins and related tools to add information on the wiki through a github pull request.

## Publishing

The FitNesse site is served here as a GitHub Pages static site from the "docs" directory.

To update the "docs" directory, use the following commands in the `fitnessedotorg` directory:
```
rm -rf docs FitNesseRoot/FitNesse FitNesseRoot/TemplateLibrary FitNesseRoot/properties
java -jar releases/yyyymmdd/fitnesse-standalone.jar -c "?publish&destination=docs" -p 8080
```

