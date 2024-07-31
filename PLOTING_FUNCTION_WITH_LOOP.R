# Load necessary libraries
library(ggplot2)
library(readxl)
library(reshape2)

# Function to load data from an Excel sheet, create a stacked bar graph, and save it
plot_and_save_stacked_bar_from_excel <- function(file_path, output_dir) {
  # Get the sheet names from the Excel file
  sheet_names <- excel_sheets(file_path)
  
  # Loop through each sheet and create a plot
  for (sheet in sheet_names) {
    # Load the data from the current sheet
    data <- read_excel(file_path, sheet = sheet)
    
    # Print column names to check
    print(colnames(data))
    
    # Reshape the data for plotting
    data_melt <- melt(data, id.vars = "Region")
    
    # Convert percentage strings to numeric
    data_melt$value <- as.numeric(sub("%", "", data_melt$value))
    
    # Plot the stacked bar graph
    p <- ggplot(data_melt, aes(x = variable, y = value, fill = Region)) +
      geom_bar(stat = "identity", position = "stack") +
      geom_text(aes(label = paste0(value, "%")), 
                position = position_stack(vjust = 0.5), 
                size = 3, color = "black") +
      scale_fill_brewer(palette = "Set3") +
      theme_minimal() +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    
    # Print the plot
    print(p)
    
    # Save the plot as an image
    output_file <- file.path(output_dir, paste0(sheet, ".png"))
    ggsave(output_file, plot = p, width = 8, height = 6)
  }
}

# Use the function to plot and save the stacked bar graphs for each sheet
file_path <- "D:/DATA ANALYSIS WITH R/DATA_FOR_GRAPHING.xlsx"
output_dir <- "D:/DATA ANALYSIS WITH R/PLOTED_GRAPHS"
plot_and_save_stacked_bar_from_excel(file_path, output_dir)
