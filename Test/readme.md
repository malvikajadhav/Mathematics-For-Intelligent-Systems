## Final test 
### Problem 1
The net present value (NPV) of a cash flow c = (c1,c2,c3) with interest rate r is c1 +
c2/(1 + r) + c3/(1 + r)2. With interest rate r = 0, the NPV is 1. With interest rate r = 0.05, the NPV
is 0. With interest rate r = 0.10, the NPV is −1.
Find the cash flow c.<br>

### Problem 2
Formulate the following problem as a set of linear equations Ax = b. Find the two cubic
polynomials:<br>
![image](https://user-images.githubusercontent.com/20522169/150396005-a20aa0aa-d9a1-4973-8367-8c398d483fd9.png)

### Problem 3
We have n points in R2, and a list of pairs of points that must be connected by links. The
positions of some of the n points are fixed; our task is to determine the positions of the remaining
points. The objectiveis to place the points so that some measure of the total interconnection length
of the links is minimized. As an example application, we can think of the points as locations of plants
or warehouses, and the links as the routes over which goods must be shipped. The goal is to find
locations that minimize the total transportation cost. In another application, the points represent the
position of modules or cells on an integrated circuit, and the links represent wires that connect pairs
of cells. Here the goal might be to place the cells in such a way that the total length of wire used to
interconnect the cells is minimized.<br>
The problem can be described in terms of a graph with n nodes, representing the n points. With each
free node we associate a variable (ui,vi) ∈R2, which represent its location or position.<br>
In this problem we will consider the example shown in the figure below. Here we have 3 free points with
![image](https://user-images.githubusercontent.com/20522169/150396275-900092a9-19ed-4e70-ba69-e9015d313d4f.png)
(a) Formulate this problem as a least squares problem<br>
![image](https://user-images.githubusercontent.com/20522169/150396398-c364d51f-934c-4abb-8fdc-2bf8fd1532df.png)
where the 6-vector x contain the six variables u1,u2,u3,v1,v2,v3. Give the coefficient matrix A
and the vector b.<br>
(b) Show that you can also obtain the optimal coordinates by solving two smaller least squares
problems<br>
![image](https://user-images.githubusercontent.com/20522169/150396579-048808d7-11b5-4b07-90fc-5720e99a8212.png)
(c) Solve the least squares problems derived in part (a) or (b) using Julia (or any language you like).
