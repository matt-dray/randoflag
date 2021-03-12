
# randoflag

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/03/02/randoflag/)
<!-- badges: end -->

Get vexed! A very simple Shiny app that presents a random (emoji) flag. Click to reveal the nation it represents; refresh for a new one.

<img src='https://raw.githubusercontent.com/matt-dray/rostrum-blog/master/static/post/2021-03-01-randoflag_files/randoflag-300x450.gif' height=300 alt='An emoji flag with a button saying reveal and another saying refresh; it says Guadeloupe under the reveal button.'>

Basically, I wanted something interesting to open with each new browser tab on my phone.

[Read the blog post](https://www.rostrum.blog/2021/03/02/randoflag/) and visit the app online at [mattdray.shinyapps.io/randoflag/](https://mattdray.shinyapps.io/randoflag/).

If it fails to load, it could be because it's reached [the maximum active hours allowed on the shinyapps.io free plan](https://support.rstudio.com/hc/en-us/articles/217592947-What-are-the-limits-of-the-shinyapps-io-Free-plan), or I've taken it down.

You could always run the app from an R session with:

``` r
shiny::runGitHub("randoflag", "matt-dray", "main")
```

You'll need to have installed {shiny}, {bslib} and {shinyjs} from CRAN and {emo} with `remotes::install_github("hadley/emo"")`.
