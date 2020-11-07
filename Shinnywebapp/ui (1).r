#
# T-h-i-s- i-s- -t-h-e- -u-s-e-r---in--t-e-r-f-a-c-e- -d-e-f-i-n-i-t-i-o-n -o-f- -a- -S-h-i-n-y- -w-e-b- -a-p-p-l-i-c-a-t-i-o-n-.- -Y-o-u- -c-a-n-
#- -r-u-n- -t-h-e- -a-p-p-l-i-c-a-t-i-o-n- -b-y- -c-l-i-c-k-i-n-g- -'-R-u-n- -A-pp-'- -a-b-o-v-e-.-
#
# -F-i-n--d -o-u-t- -m-o-r-e- -a-b-o-u-t- -b-u-i-l-d-i-n-g- -a-p-p-l-i-c-a-t-i-o-n-s- -w-i-t-h -S-h-i-n-y- -h-e-r-e-:-
#
#    http://shiny.rstudio.com/
#

library(shiny)

# -D-e-f-i-n-e- -U-I- -f--o-r- -a-p-p-l-i-c-a-t-i-o-n- -t-h-a-t- -d-r-a-w-s- -a- -h-i-s-t-o-g-r-a-m
shinyUI(
    pageWithSidebar(
        
        headerPanel("Book prediction"),
        sidebarPanel(
            textInput('m4ood', label="what do you want to read ?(turn the capslock button off)"),
            textInput('m4ovie', label="sitcom genre (turn the capslock button off)"),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of Book,sitcom'),
            h4('whats your mood'),
            verbatimTextOutput("iinputValue"),
            h4('the genre you typed'),
            verbatimTextOutput("iinputValue2"),
            h4('great then you can now read this book '),
            verbatimTextOutput("pprediction"),
            h4('you can also enjoy this sitcom'),
            verbatimTextOutput("pprediction2")
        )
    )
)
