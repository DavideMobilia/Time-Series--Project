# Energy consumption and meteorological impact causality
## Synopsis:
The report focuses on the analysis of a time series related to the energy consumption of Building U1 at the University of Milan-Bicocca. 
The study observes the trend of the series, attempts to make predictions about future consumption, and aims to understand its dynamics and facets to gather information useful for improving the energy management of the building, with a perspective directed towards both economic and ecological aspects.

The analysis was conducted using SARIMA models with the addition of information related to an external regressor, and Prophet. The latter is a model based on an open-source library developed by Facebook and released in 2017, capable of handling multi-seasonality and outliers differently from classical models.


## Objective/Problem Addressed:
The analysis is based on the historical series of energy consumption for Building U1. Based on these data, any trends and cycles that could be of interest to the study are identified and isolated. 

The goal is to understand if trends and seasonality can be justified by external factors, particularly atmospheric elements such as temperature.

These relationships could be useful for effective financial planning regarding electricity consumption within the Milano-Bicocca university complex, which, due to its size and structural complexity, may contain inefficiencies.
Furthermore, understanding how consumption varies based on weather conditions can be valuable information for the electricity provider, who must manage and possibly predict the energy load of the network.
