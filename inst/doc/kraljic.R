## ---- eval=FALSE---------------------------------------------------------
#  psc
#  ## # A tibble: 200 × 3
#  ##      PSC x_attribute y_attribute
#  ##    <chr>       <int>       <int>
#  ## 1   D233        3.01        4.84
#  ## 2   F352        4.34        5.64
#  ## 3   T713        3.37        4.30
#  ## 4   K833        2.67        5.53
#  ## 5   Q121        3.48        4.33
#  ## 6   C791        3.32        7.32
#  ## 7   Y207        3.48        5.42
#  ## 8   W439        2.47        3.35
#  ## 9   N290        1.66        4.02
#  ## 10  C251        1.00        7.47
#  ## # ... with 190 more rows

## ---- echo=FALSE, warning=FALSE, message=FALSE---------------------------
psc <- tibble::tibble(
  PSC = c("D233", "F352", "T713", "K833", "Q121", "C791", "Y207", "W439", "N290", "C251", "U115", "Y679", "P256","B272", "Y895", "D663", "D400", "S883", "G274", "S229", "V324", "C529", "H379", "S528", "Q844", "X925", "A202", "W483", "Q507", "X898", "T845", "F318", "Y357", "Y536", "R954", "Y416", "E103", "I425", "C305", "W936", "H489", "N923", "G904", "I329", "T636", "G220", "W441", "C432", "N429", "N527", "X253", "N376", "L595", "K472", "H824", "X945", "D604", "E997", "K815", "E817", "D655", "R315", "P402", "F754", "Y853", "K960", "T856", "Z840", "H423", "Q618", "S855", "U622", "Q410", "G641", "Q255", "B187", "B238", "K980", "V809", "O854", "B455", "J637", "C309", "H426", "F973", "P184", "N763", "G691", "T373", "V761", "V437", "Y396", "S405", "I418", "R631", "I364", "D442", "D353", "J313", "Q795", "O131", "O920", "Y670", "V906", "O977", "J164", "M578", "V879", "M450", "E908", "B666", "D994", "N741", "A261", "H986", "W685", "Z776", "Z821", "A859", "S961", "E928", "F520", "X634", "B875", "C284", "X262", "V177", "C877", "D623", "M607", "P171", "E580", "I440", "D581", "E370", "M667", "G230", "G626", "G783", "N915", "X119", "Q697", "M496", "S868", "F334", "R777", "P941", "N436", "W932", "E537", "T317", "K942", "D715", "M176", "F452", "V162", "D983", "H278", "V649", "M775", "T269", "T173", "O522", "W299", "G852", "P291", "X597", "U310", "Q541", "M375", "A365", "L979", "X283", "T962", "E808", "A363", "I617", "B829", "G698", "B188", "U646", "O288", "T127", "C901", "I116", "V870", "S346", "J758", "S965", "E619", "I682", "M354", "H562", "K482", "L568", "Z491", "A668", "T203", "J332", "G362"), 
  x_attribute = c(3.01, 4.34, 3.37, 2.67, 3.48, 3.32, 3.48, 2.47, 1.66, 1.00, 1.40, 2.99, 4.93, 1.62, 1.00, 3.42, 2.66, 1.31, 3.24, 1.45, 2.70, 1.61, 3.99, 2.40, 1.77, 3.92, 2.88, 2.75, 3.37, 2.53, 2.94, 4.68, 5.00, 4.01, 1.18, 1.00, 4.46, 3.54, 1.00, 1.43, 1.00, 2.57, 2.41, 1.90, 3.39, 3.43, 2.84, 4.65, 3.95, 3.01, 1.69, 2.11, 3.73, 3.84, 1.33, 4.18, 3.25, 5.00, 2.85, 4.31, 2.95, 2.52, 5.00, 2.49, 1.64, 3.96, 2.57, 4.74, 2.46, 3.13, 4.32, 1.41, 4.66, 3.05, 4.95, 1.71, 2.03, 3.18, 2.05, 1.89, 2.42, 4.66, 4.12, 5.00, 3.46, 3.56, 3.30, 2.01, 4.22, 3.86, 4.24, 2.15, 3.28, 4.21, 2.35, 2.36, 2.83, 2.60, 2.60, 1.16, 2.37, 4.48, 3.98, 1.00, 3.88, 1.22, 2.31, 3.82, 2.57, 4.75, 3.51, 4.58, 3.82, 3.83, 2.67, 3.95, 4.53, 3.70, 3.75, 3.47, 3.18, 4.21, 5.00, 4.00, 4.91, 2.70, 2.28, 1.00, 1.00, 2.95, 3.40, 4.06, 1.22, 1.61, 3.48, 3.53, 2.41, 3.42, 2.60, 3.87, 2.62, 5.00, 3.76, 1.64, 2.68, 1.78, 1.56, 2.67, 3.80, 2.98, 2.46, 4.81, 4.03, 3.22, 5.00, 2.74, 1.86, 4.43, 3.31, 2.28, 4.01, 3.99, 2.21, 2.25, 2.72, 3.31, 4.54, 3.67, 4.19, 2.23, 3.49, 3.80, 5.00, 2.28, 3.97, 3.42, 2.10, 1.88, 2.02, 3.89, 1.00, 5.00, 2.60, 3.80, 4.32, 5.00, 3.01, 4.17, 2.46, 5.00, 2.38, 2.37, 2.13, 2.41, 1.74, 1.00, 3.78, 1.00, 3.07, 2.29),
  y_attribute = c(4.84, 5.64, 4.30, 5.53, 4.33, 7.32, 5.42, 3.35, 4.02, 7.47, 6.58, 1.00, 3.04, 2.46, 4.91, 5.49, 4.72, 5.73, 8.98, 7.57, 3.30, 2.65, 4.76, 5.75, 5.76, 4.60, 2.44, 7.98, 8.82, 5.11, 3.44, 4.23, 6.55, 1.75, 4.80, 6.32, 7.71, 3.50, 5.49, 6.52, 5.06, 2.48, 4.45, 5.60, 6.58, 2.79, 6.58, 6.05, 7.60, 3.51, 4.75, 4.83, 4.12, 7.88, 4.45, 6.83, 1.34, 1.53, 4.04, 6.55, 6.64, 6.24, 5.82, 5.67, 4.97, 4.04, 5.21, 4.87, 5.52, 4.02, 4.89, 5.46, 5.54, 1.40, 6.41, 2.46, 5.53, 6.90, 6.47, 5.93, 4.66, 3.15, 2.66, 5.58, 3.91, 5.09, 6.18, 2.63, 6.93, 1.20, 4.67, 6.77, 5.19, 6.15, 2.38, 6.78, 5.91, 5.74, 4.51, 4.56, 6.65, 4.32, 3.76, 6.34, 6.74, 5.23, 1.00, 5.03, 4.39, 7.11, 6.11, 4.52, 3.93, 6.76, 4.34, 6.46, 5.05, 7.75, 1.54, 1.10, 7.36, 4.61, 5.19, 4.92, 2.07, 6.54, 5.81, 8.37, 6.50, 4.22, 3.00, 6.68, 4.99, 4.88, 5.27, 3.71, 1.36, 3.37, 6.80, 4.70, 5.27, 4.19, 7.50, 2.86, 1.18, 6.96, 4.40, 3.98, 3.58, 3.00, 3.06, 1.50, 4.17, 4.42, 4.36, 6.96, 5.51, 3.86, 7.40, 5.63, 4.08, 5.04, 7.29, 9.54, 2.72, 5.77, 6.23, 5.50, 4.32, 3.00, 3.30, 6.41, 4.52, 4.74, 6.46, 2.99, 6.77, 6.16, 6.28, 3.63, 10.00, 5.00, 8.18, 4.76, 7.30, 5.88, 8.21, 7.48, 6.02, 3.65, 7.21, 2.66, 5.15, 6.38, 5.95, 5.74, 4.30, 2.96, 5.89, 2.63)
)

## ---- eval=FALSE---------------------------------------------------------
#  SAVF_preferred_rho(desired_x = c(3, 4, 5),
#                     desired_v = c(.8, .9, 1),
#                     x_low = 1,
#                     x_high = 5,
#                     rho_low = 0,
#                     rho_high = 1)
#  ## [1] 0.6531

## ---- echo=FALSE---------------------------------------------------------
SAVF_score <- function(x, x_low, x_high, rho){

  # return error if x_low is not less than x_high
  if(x_low >= x_high){
    stop("`x_low` must be less than `x_high`", call. = FALSE)
  }

  # return error if rho is not a single value
  if (length(rho) != 1) {
    stop("`rho` must be a numeric value of length 1", call. = FALSE)
  }

  # generate SAVF values
  value <- (1 - exp(-rho * (x - x_low))) / (1 - exp(-rho * (x_high - x_low)))

  # return values
  return(value)

}

SAVF_plot <- function(desired_x, desired_v, x_low, x_high, rho){

  # return error if x_low is not less than x_high
  if(x_low >= x_high){
    stop("`x_low` must be less than `x_high`", call. = FALSE)
  }

  # return error if rho is not a single value
  if (length(rho) != 1) {
    stop("`rho` must be a numeric value of length 1", call. = FALSE)
  }

  # create string of x values
  x <- seq(x_low, x_high, by = (x_high - x_low) / 1000)
  v <- SAVF_score(x, x_low, x_high, rho)

  # create data frames to plot
  df <- data.frame(x = x, v = v)
  desired <- data.frame(x = desired_x, v = desired_v)

  ggplot2::ggplot(df, ggplot2::aes(x, v)) +
    ggplot2::geom_line() +
    ggplot2::geom_point(data = desired, ggplot2::aes(x, v), shape = 23, size = 2, fill = "white")

}

## ---- fig.align='center', fig.height=3, fig.width=6----------------------


SAVF_plot(desired_x = c(3, 4, 5),
          desired_v = c(.8, .9, 1),
          x_low = 1,
          x_high = 5,
          rho = 0.6531)

## ---- echo=FALSE---------------------------------------------------------
SAVF_plot_rho_error <- function(desired_x, desired_v, x_low, x_high, rho_low, rho_high){

  # return error if x_low is not less than x_high
  if(x_low >= x_high){
    stop("`x_low` must be less than `x_high`", call. = FALSE)
  }

  # return error if rho_low is not less than rho_high
  if(rho_low >= rho_high){
    stop("`rho_low` must be less than `rho_high`", call. = FALSE)
  }

  # compute sequence of rho values
  rho <- seq(rho_low, rho_high, by = (rho_high - rho_low) / 10000)
  rho <- rho[rho != 0]

  # compute deltas between preferred and fitted values
  delta <- sapply(rho, function(x) sum((SAVF_score(desired_x, x_low, x_high, x) - desired_v)^2))

  # return rho that produces smallest error
  true_rho <- rho[which(delta == min(delta))]

  # plot value
  df <- data.frame(rho = rho, delta = delta)
  ggplot2::ggplot(df, ggplot2::aes(rho, delta)) +
    ggplot2::geom_line() +
    ggplot2::geom_point(ggplot2::aes(true_rho, min(delta)), shape = 23, size = 2, fill = "white")

}

## ---- fig.align='center', fig.height=3, fig.width=6----------------------
SAVF_plot_rho_error(desired_x = c(3, 4, 5),
                    desired_v = c(.75, .9, 1),
                    x_low = 1,
                    x_high = 5,
                    rho_low = 0,
                    rho_high = 1)

## ---- echo=FALSE---------------------------------------------------------
SAVF_score <- function(x, x_low, x_high, rho){

  # return error if x_low is not less than x_high
  if(x_low >= x_high){
    stop("`x_low` must be less than `x_high`", call. = FALSE)
  }

  # return error if rho is not a single value
  if (length(rho) != 1) {
    stop("`rho` must be a numeric value of length 1", call. = FALSE)
  }

  # generate SAVF values
  value <- (1 - exp(-rho * (x - x_low))) / (1 - exp(-rho * (x_high - x_low)))

  # return values
  return(value)

}

## ---- collapse=TRUE, message=FALSE, warning=FALSE------------------------
# using dplyr to add a new variable while preserving existing data
library(dplyr)

# here we are assuming we found the appropriate rho value for the y attribute using
# the same process as mentioned above
psc <- psc %>%
  mutate(x_SAVF_score = SAVF_score(x_attribute, 1, 5, .653),
         y_SAVF_score = SAVF_score(y_attribute, 1, 10, .70))

psc

## ---- echo=FALSE---------------------------------------------------------
kraljic_matrix <- function(data, x, y){

  # return error if x or y are not numeric values
  x_col <- data[[deparse(substitute(x))]]
  y_col <- data[[deparse(substitute(y))]]

  if(!is.numeric(x_col) | !is.numeric(y_col)){
    stop("data for both column inputs must be numeric", call. = FALSE)
  }

  # plot Kraljic Matrix
  ggplot2::ggplot(data, ggplot2::aes_string(deparse(substitute(x)), deparse(substitute(y)))) +
    ggplot2::geom_point() +
    ggplot2::geom_vline(xintercept = .5) +
    ggplot2::geom_hline(yintercept = .5) +
    ggplot2::coord_cartesian(xlim = c(0,1), ylim = c(0,1)) +
    ggplot2::scale_x_reverse()
}

## ---- fig.align='center', fig.width=7, fig.height=5----------------------
kraljic_matrix(psc, x_SAVF_score, y_SAVF_score)

## ---- echo=FALSE---------------------------------------------------------
kraljic_quadrant <- function(x, y){

  ifelse(x > .5 & y >= .5, "Leverage",
         ifelse(x > .5 & y < .5, "Critical",
                ifelse(x <= .5 & y >= .5, "Strategic",
                       ifelse(x < .5 & y < .5, "Bottleneck", NA))))

}

## ---- collapse=TRUE------------------------------------------------------
psc %>%
  mutate(quadrant = kraljic_quadrant(x_SAVF_score, y_SAVF_score))

## ---- echo=FALSE---------------------------------------------------------
MAVF_score <- function(x, y, x_wt, y_wt){

  # return error if x and y are different lengths
  if(length(x) != length(y)){
    stop("`x` and `y` must be the same length", call. = FALSE)
  }

  # return error if x or y weights are not a single value
  if (length(x_wt) != 1 | length(y_wt) != 1) {
    stop("x and y weights must be numeric values of length 1", call. = FALSE)
  }

  x * x_wt + y * y_wt + (1 - x_wt - y_wt) * x * y

}

## ---- collapse=TRUE------------------------------------------------------
psc %>%
  mutate(MAVF = MAVF_score(x_SAVF_score, y_SAVF_score, 0.65, 0.35))

## ---- collapse=TRUE------------------------------------------------------
psc %>%
  mutate(MAVF = MAVF_score(x_SAVF_score, y_SAVF_score, 0.65, 0.35),
         quadrant = kraljic_quadrant(x_SAVF_score, y_SAVF_score)) %>%
  filter(quadrant == "Leverage") %>%
  top_n(10, wt = MAVF)

## ---- echo=FALSE---------------------------------------------------------
MAVF_sensitivity <- function(data, x, y, x_wt_min, x_wt_max, y_wt_min, y_wt_max){

  # return error if x_wt_min is not less than x_wt_max
  if(x_wt_min >= x_wt_max){
    stop("`x_wt_min` must be less than `x_wt_max`", call. = FALSE)
  }

  # return error if y_wt_min is not less than y_wt_max
  if(y_wt_min >= y_wt_max){
    stop("`y_wt_min` must be less than `y_wt_max`", call. = FALSE)
  }

  # create random wts
  x_wt <- runif(1000, min = x_wt_min, max = x_wt_max)
  y_wt <- runif(1000, min = y_wt_min, max = y_wt_max)
  w_wt <- 1 - x_wt - y_wt

  # parse out vectors from data
  x_col <- data[[deparse(substitute(x))]]
  y_col <- data[[deparse(substitute(y))]]

  # create vectors to fill
  Min. <- vector(mode = "numeric", length = nrow(data))
  `1st Qu.` <- vector(mode = "numeric", length = nrow(data))
  Median <- vector(mode = "numeric", length = nrow(data))
  Mean <- vector(mode = "numeric", length = nrow(data))
  `3rd Qu.` <- vector(mode = "numeric", length = nrow(data))
  Max. <- vector(mode = "numeric", length = nrow(data))
  Range <- vector(mode = "numeric", length = nrow(data))

  # loop through to compute values for each x y pair
  for(i in 1:nrow(data)){
    s <- summary(x_col[i] * x_wt + y_col[i] * y_wt + (1 - x_wt - y_wt) * x_col[i] * y_col[i])
    Min.[i] <- s[1]
    `1st Qu.`[i] <- s[2]
    Median[i] <- s[3]
    Mean[i] <- s[4]
    `3rd Qu.`[i] <- s[5]
    Max.[i] <- s[6]
    Range[i] <- s[6] - s[1]
  }

  # add new columns
  data$MAVF_Min <- Min.
  data$MAVF_1st_Q <- `1st Qu.`
  data$MAVF_Median <- Median
  data$MAVF_Mean <- Mean
  data$MAVF_3rd_Q <- `3rd Qu.`
  data$MAVF_Max <- Max.
  data$MAVF_Range <- Range


  # return data
  data

}

## ---- collapse=TRUE------------------------------------------------------
MAVF_sensitivity(psc,
                 x = x_SAVF_score,
                 y = y_SAVF_score,
                 x_wt_min = .55,
                 x_wt_max = .75,
                 y_wt_min = .25,
                 y_wt_max = .45) %>%
  select(PSC, starts_with("MAVF"))

