# Insurance-factor-identification
## Project Overview:

- The project was created to look into the problem of analyzing the real
influence on the claims of the risk arguments and to compare this
structure with the actual tariff.

## Dataset Used:

The dataset holds 7 variables and the description of these variables are given
below:

- Kilometers: Kilometers travelled per year

1: < 1000

2: 1000-15000

3: 15000-20000

4: 20000-25000

5: > 25000

- Zone: Geographical zone

1: Stockholm, Göteborg, and Malmö with surroundings

2: Other large cities with surroundings

3: Smaller cities with surroundings in southern Sweden

4: Rural areas in southern Sweden

5: Smaller cities with surroundings in northern Sweden

6: Rural areas in northern Sweden

7: Gotland

- Bonus: No claims bonus; equal to the number of years, plus one,
since the last claim.

- Make:  1-8 represents eight different common car models. All
other models are combined in class 9.

- Insured:  The number of insured in policy-years.

- Claims: Number of claims

- Payment : The total value of payments in Skr (Swedish Krona)

## Analysis Tasks:

- Obtained the basic insights into the data using summery() function.

- Payment is positively related to the number of claims and the number
of insured policy years by 99.54% and 93.33% respectively. The
visualization of the results are as follows:

Correlation between payment and number of claims

<img src='googleproject.jpg' width='500' height='500'>


Correlation between payment and number of insured policy.

<img src='googleproject.jpg' width='500' height='500'>


- Used linear regression model to prove that except bonus and make,
other all variables are affecting the payment in which km, insured and
claims are amongst the highest affecter.

- Found that Zones 1 to 4 have more insured years, claims, and payments
among which Zone 4 has the highest number of claims, and thus
payment as well and kilometres group 2 has the maximum payments.
Though the insured number of years is lesser than kilometre 1, the
claims and payments are higher for group 2 . This analysis can help the
insurance company to establish a new branch.

- Variables such as kilometres, zone, bonus, make, and insured are highly
significant and are making an impact on the claims.



