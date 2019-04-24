# 2019.04.24 線性代數期中考


# 第一大題 --------------------------------------------------------------------

DATA <- c(1,1,0,0,2,-1,0,1,3,-3,0,-2,1,-2,0,-3)
A <- matrix(data = DATA, nrow = 4, ncol = 4, byrow = TRUE)

# (a) 小題

A_col_1 <- matrix(c(1,1,0,0), nrow = 4, ncol = 1)
A_col_2 <- matrix(c(2,-1,0,1), nrow = 4, ncol = 1)
A_col_3 <- matrix(c(3,-3,0,-2), nrow = 4, ncol = 1)
A_col_4 <- matrix(c(1,-2,0,-3), nrow = 4, ncol = 1)

### Gram-schmidt

v1 = A_col_1
v2 = A_col_2 - (sum(v1*A_col_2)/sum(v1*v1))*v1
v3 = A_col_3 - (sum(v1*A_col_3)/sum(v1*v1))*v1 - (sum(v2*A_col_3)/sum(v2*v2))*v2
v4 = A_col_4 - (sum(v1*A_col_4)/sum(v1*v1))*v1 - (sum(v2*A_col_4)/sum(v2*v2))*v2 - (sum(v3*A_col_4)/sum(v3*v3))*v3

w1 = sqrt(1/sum(v1*v1))*v1
w2 = sqrt(1/sum(v2*v2))*v2
w3 = sqrt(1/sum(v3*v3))*v3
w4 = sqrt(1/sum(v4*v4))*v4
