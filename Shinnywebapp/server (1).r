#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
BookPred <- function(m4ood){
    if (m4ood=="happy") "The art of Happiness by Dalai Lama"
    else if (m4ood=="sad") "'Little Women' by Louisa May Alcott"
    else if (m4ood=="alone") "Braving the Wilderness"
    else if (m4ood=="angry") "the art of letting go"
    else if (m4ood=="bitchy") "Little Women Louisa May Alcott"
    else if (m4ood=="blank") "The Harry Potter series by J.K Rowling"
    else if (m4ood=="confused") "The Power of Now A Guide to Spiritual Enlightenment"
    else if (m4ood=="depressed") "The Perks of Being a Wallflower by Stephen Chbosky"
    else if (m4ood=="energetic") "The Great Gatsby, by F Scott Fitzgerald"
    else if (m4ood=="geeky") "harry potter ny j k rowling"
    else if (m4ood=="high") "On the Road by beatnik author Jack Kerouac "
    else if (m4ood=="lazy") "The Untethered Soul: The Journey Beyond Yourself"
    else if (m4ood=="pleased") "Eleanore Oliphant is Completely Fine by Gail Honeyman."
}

SitcomPred <- function(m4ovie){
    if (m4ovie=="action") "Beverly Hills Gun Club"
    else if (m4ovie=="musicals") "glee"
    else if (m4ovie=="biopic") "dolemite is my name"
    else if (m4ovie=="romance") "How i met your mother"
    else if (m4ovie=="animation") "family Guy"
    else if (m4ovie=="science fiction") "Rick and morty"
    else if (m4ovie=="cult") "Broad City."
    else if (m4ovie=="disaster") "chernobyl diaries"
    else if (m4ovie=="spy") "Spy"
    else if (m4ovie=="drama") "The Schitts Creek"
    else if (m4ovie=="fantasy") "Stranger Things"
    else if (m4ovie=="thriller") "Mr Robot"
    else if (m4ovie=="gangster") "thriller park boys"
    else if (m4ovie=="war") "Rome"
    else if (m4ovie=="westerns") "Friends"
    else if (m4ovie=="horror") "Helix"
}


shinyServer(
    function(input, output) {
        output$iinputValue <- renderPrint({input$m4ood})
        output$pprediction <- renderPrint({BookPred(input$m4ood)})
        
        output$iinputValue2 <- renderPrint({input$m4ovie})
        output$pprediction2 <- renderPrint({SitcomPred(input$m4ovie)})
    }
)