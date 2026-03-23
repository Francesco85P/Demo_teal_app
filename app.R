library(teal)
library(teal.data) # <--- add this line so dataset() is available

app <- teal::init(
  data = teal_data(
    "IRIS" = iris,
    "MTCARS" = mtcars

  ),
  module = example_module(label = "Example Module!"),
  filter = teal_slices(
    teal_slice(dataname = "IRIS", varname = "Species", selected = "setosa", fixed = TRUE, anchored = TRUE),
    teal_slice(dataname = "IRIS", varname = "Sepal.Length", anchored = TRUE )
  ),
  header = "My first teal app",
  footer = "This is a test"
)

shinyApp(app$ui, app$server)


?example_module()
