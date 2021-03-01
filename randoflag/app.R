library(shiny)
library(shinyjs)
library(shinythemes)
library(emo)

flags <- emo::jis[emo::jis$subgroup == "country-flag", c("emoji", "name")]

ui <- fluidPage(
    
    theme = shinythemes::shinytheme("superhero"),
    
    shinyjs::useShinyjs(),
    
    tags$head(tags$style(
        "* { text-align: center; }",
        "#flagEmoji { font-size: 200px }",
        "#flagName { font-size: 50px }",
        "footer { position: absolute; bottom:5%; left: 30%; right:30% }"
    )),
    
    textOutput("flagEmoji"),
    actionButton("reveal_btn", paste("Reveal", emo::ji("check"))),
    br(),
    
    hidden(div(id = "reveal_div", textOutput("flagName"))),
    br(),
    
    actionButton(
      "refresh_btn",
      paste("Refresh", emo::ji("arrows_counterclockwise"))
    ),
    
    HTML(
      "<footer>
          <a href='https://www.matt-dray.com/'>Matt Dray</a> / 
          <a href='https://www.rostrum.blog/'>Blog</a> / 
          <a href='https://www.github.com/matt-dray/randoflag/'>Source</a>
          </footer>"
    )
    
)

server <- function(input, output) {
  
    flag <- flags[sample(nrow(flags), 1), ]
    
    output$flagEmoji <- renderText({ flag[["emoji"]] })
    
    observeEvent(input$refresh_btn, { shinyjs::refresh() })
    
    observeEvent(input$reveal_btn, {
        toggle('reveal_div')
        output$flagName <- renderText({ flag[["name"]] })
    })
    
}

shinyApp(ui = ui, server = server)
