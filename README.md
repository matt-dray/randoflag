
# randoflag

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
<!-- badges: end -->

Get vexed! A very simple Shiny app that presents a random (emoji) flag. Click to reveal the nation it represents.

<img src='https://raw.githubusercontent.com/matt-dray/rostrum-blog/master/static/post/2021-03-01-randoflag_files/guadeloupe.png' height=300 alt='An emoji flag with a button saying reveal and another saying refresh; it says Guadeloupe under the reveal button.'>

Basically, I wanted something interesting to open with each new browser tab on my phone.

The app is live online at [shinyapps.io/mattdray/randoflag](https://www.shinyapps.io/mattdray/randoflag), until I decide to take it down. 

You can always run the app from an R session with:

``` r
shiny::runGitHub(
  repo = "randoflag", 
  username = "matt-dray",
  ref = "main"
)
```
