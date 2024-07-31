**Excel to Stacked Bar Graph Plotter**
This project provides a script to load data from an Excel file, create stacked bar graphs for each sheet, and save the resulting plots as images. The script uses R and the ggplot2, readxl, and reshape2 packages to accomplish this.

**Table of Contents**
Installation
Usage
Project Structure
Contributing
License
Installation
To use this project, you'll need to have R installed on your system. Additionally, you need to install the following R packages:

R

install.packages("ggplot2")
install.packages("readxl")
install.packages("reshape2")
Alternatively, you can use the renv package to manage dependencies if you prefer a reproducible environment.

**Usage**
Clone the repository:

**bash**

git clone https://github.com/yourusername/excel-to-stacked-bar-graph.git
cd excel-to-stacked-bar-graph
Set the file path and output directory:

Update the file_path and output_dir variables in the script with the location of your Excel file and the desired output directory for the images.

**Run the script:**

Execute the script in your R environment or RStudio:

R
source("plot_and_save_stacked_bar_from_excel.R")
The script will read each sheet from the Excel file, generate a stacked bar graph, and save the plots in the specified output directory.

**Project Structure**
bash
excel-to-stacked-bar-graph/
├── plot_and_save_stacked_bar_from_excel.R  # Main script for plotting
├── README.md                               # Project README
├── DATA_FOR_GRAPHING.xlsx                  # Example data file (replace with your own)
├── PLOTED_GRAPHS/                          # Directory for output plots
Contributing
Contributions are welcome! If you'd like to improve the script or add new features, feel free to fork the repository and submit a pull request. Please include a detailed description of your changes and ensure that your code follows the project's style and conventions.

