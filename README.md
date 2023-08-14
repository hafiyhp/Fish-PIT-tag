# Fish-PIT-tag-data

## Installation

1. Clone this repository to your local machine: https://github.com/your-username/your-repo.git

2. Open the files in your preferred coding environment.

## Usage

1. Clone this repository to your local machine.
2. Open the R script `PIT_Tag_Analysis.R` in RStudio.
3. Modify the file paths if needed to point to your local data files.
4. Run the script step by step or all at once to perform the analysis.
5. Refer to the generated data tables and visualizations for insights into salmon migration.

## Code Explanation

The R script `PIT_Tag_Analysis.R` performs various data manipulation and summarization tasks:

### Data Preparation

The script starts by setting the options for digit formatting and loading necessary libraries.

### Filtering and Summarization

#### Blackwater Data

The data is read from `Combined_data3FINAL.csv`. Fish exclusively detected at Blackwater are filtered and summarized.

#### Upper Avochie Data

Fish detected at Upper Avochie are filtered and summarized.

#### Lower Avochie Data

Fish detected at Lower Avochie are filtered and summarized.

#### Submersible Avochie Data

Fish detected at Submersible Avochie are filtered and summarized.

#### Exclusive Site Combinations

The script continues by filtering and summarizing fish based on exclusive site combinations, such as fish detected initially at Upper Avochie before later appearing at Lower Avochie and Submersible Avochie.

### Results

The script generates insights into fish migration patterns, including counts of fish detected at various site combinations.

## Results

The analysis generates insights into salmon migration patterns specifically during the months of March to May based on the PIT tag data. Notable results include:

- A total of 573 fish were detected in both Blackwater and Avochie sites.
- 69% of fish were detected at Blackwater, while 31% were detected at Avochie sites after including Submersible detections.
- A total of 313 Avochie detections were recorded when considering various site combinations.

## Acknowledgments

I would like to acknowledge the use of the `dplyr` and `openxlsx` libraries for data manipulation and handling Excel files, respectively.

## Contributing

We welcome contributions! If you'd like to contribute, please fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the [Unlicense](LICENSE). See [LICENSE](LICENSE) for details.

## Contact

If you have any questions or suggestions, feel free to contact us at [hafiyhp@gmail.com] or [hafiyhp].
