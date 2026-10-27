# ECE2112_PA5
## EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING

# A. TRANSPOSE OPERATIONS
The problems asks of us to perform three matrix operations on matrix A that is replaced by R and then by Z. The operations are namely: Transpose --> tranpose(A), Complex Conjugate Transpose (A'), and Non-Conjugate Transpose (A.').<br>
We are then asked the questions:
  <br>a. Which operations give identical results for the real matrix R?
  <br>b. Which two operations give identical results for the complex matrix Z?
  <br>c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?

The matrix R and Z are given as,<img width="332" height="59" alt="image" src="https://github.com/user-attachments/assets/3401ffe3-102c-4639-8579-90641f5d35b1" />

First, we assign variable A to matrix R then perform the three said operations. To perform the operations we simply put A inside the function transpose(), and attach it on the operators ' and .'
```
A = R;
tranpose(A)
A'
A.'
```
This is the simplest way to create the code asked, in my file however, I put some descriptions to improve readibility and identification.
```
disp('Real Matrix R');
A = R;
disp('A replaced by R:'); disp(A);
disp('transpose(A):'); disp(transpose(A));
disp('A'':'); disp(A');
disp('A.'':'); disp(A.');
```
OUTPUT:<img width="140" height="301" alt="image" src="https://github.com/user-attachments/assets/27d79462-d408-4a44-9910-3a2e61854926" />


We then perform the same thing but now we replace A with Z. NOTE that matlab recognizes variable A already has a matrix assigned to R so we need to assign it now to Z for it to become replaced by Z.
```
disp('Complex Matrix Z');
A = Z;
disp('A replaced by R:'); disp(A);
disp('transpose(A):'); disp(transpose(A));
disp('A'':'); disp(A');
disp('A.'':'); disp(A.');
```
OUTPUT:<img width="318" height="248" alt="image" src="https://github.com/user-attachments/assets/cb24d696-82ed-473e-a812-f6a673f91945" />

## Transpose Questions
<br>a. Which operations give identical results for the real matrix R?
  - transpose(A), A', and A.' all give identical results because A contains only real entries, meaning complex conjugation has no effect.

<br>b. Which two operations give identical results for the complex matrix Z?
  - transpose(A) and A.' give identical results because both perform a standard non-conjugate matrix transpose.

<br>c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?
- The apostrophe operator (') performs the complex conjugate transpose, which takes the complex conjugate of each element in addition to transposing the rows and columns.

# B. TWO METHODS FOR A LINEAR SYSTEM
## Inverse Method
From our linear algebra lesson we learned that we can get the solutions of a system of linear equations by using the inverse method.<img width="884" height="504" alt="image" src="https://github.com/user-attachments/assets/d6945e72-0dd1-49ac-9a6c-67139f98db02" /><br>
First we create the coefficient matrix A and vector b as follows:
```
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2];
b = [16; -7; 6; 7];
```
We then put the coefficient matrix A inside the inverse function and multiply it to the vector b then assign them to x_inv as instructed.
```
x_inv = inv(A) * b;
```
OUTPUT: <img width="217" height="71" alt="image" src="https://github.com/user-attachments/assets/9cb0ea9a-3e42-4ac1-bc9c-88e232118962" />

## Cramer's Rule
To perform Cramer's rule we must first get the determinant of matrix A, so we use the determinant function.
```
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2];
detA = det(A);
OUTPUT: Determinant of A: 280
```
Remember to perform Cramer's rule, we must replace the columns of detA one-by-one with vector b then get its determinant. Because we have four equations, we have to replace the columns four times and get their respective determinants four times also, and then we divide our four new determinants by detA so its like<br> [det(A1)/det(A)]<br>
[det(A2)/det(A)]<br>
[det(A3)/det(A)]<br>
[det(A4)/det(A)]<br>
This code basically automates it so we do not have to type the values manually all the time.
```
n = length(b);
x_cramer = zeros(n, 1);
for i = 1:n
    Ai = A;
    Ai(:, i) = b;
    x_cramer(i) = det(Ai) / detA;
end
```
OUTPUT: <img width="224" height="68" alt="image" src="https://github.com/user-attachments/assets/028da0f0-44cb-4b8c-8380-d0d485e1460e" />

Lastly, we are tasked to display norm(x_inv-x_cramer) and norm(A*x_inv-b).
```
disp(norm(x_inv-x_cramer));
disp(norm(A*x_inv-b));
```
OUTPUT: <img width="197" height="70" alt="image" src="https://github.com/user-attachments/assets/627f44a6-d6e5-40a7-a6f4-76fb92ef9620" />



