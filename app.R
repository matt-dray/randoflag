library(shiny)
library(shinyjs)
library(bslib)
library(emo)

flags <- emo::jis[emo::jis$subgroup == "country-flag", c("emoji", "name")]

ui <- fluidPage(
  
  theme = bs_theme(
    bg = "#333333",
    fg = "#FFFFFF",
    primary = "#BEBEBE",
    base_font = font_google("Varela Round")
  ),
  
  shinyjs::useShinyjs(),
  
  tags$head(tags$style(
    "* { text-align: center; }",
    "#flagEmoji { font-size: 200px }",
    "#flagName { font-size: 25px }"
  )),
  
  textOutput("flagEmoji"),
  actionButton("reveal_btn", paste("Reveal", emo::ji("check"))),
  br(),
  br(),
  hidden(div(id = "reveal_div", textOutput("flagName"))),
  br(),
  
  actionButton(
    "refresh_btn",
    paste("Refresh", emo::ji("arrows_counterclockwise"))
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
