# k-means only works with numerical variables,
# so don't give the user the option to select
# a categorical variable
vars <- setdiff(names(mtcars), c("drat", "qsec", "vs", "gear", "carb"))

pageWithSidebar(
  headerPanel('Clustering Collection of Cars (Mtcars Dataset)'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', vars),
    selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
    numericInput('clusters', 'Cluster count', 4, min = 1, max = 8)
  ),
  mainPanel(
    plotOutput('plot1'),
    p("For your information, since clustering only work with numerical variable, we remove irrelevant variable"),
    p("How to use the application"),
    p("1. Select variable that you want to plot in X Variable and Y Variable in the sidebar panel"),
    p("2. Select number of cluster that you want to assigned (min 1 and max 8)"),
    p("3. Check the result in the plot in the main panel")
  )
)

# mpg, disp, hp, wt
# 
# col cyl, am,