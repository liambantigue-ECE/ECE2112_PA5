# ECE2112_PA5
EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING

# A. TRANSPOSE OPERATIONS
The problems asks of us to perform three matrix operations on matrix A that is replaced by R and then by Z. The operations are namely: Transpose --> tranpose(A), Complex Conjugate Transpose (A'), and Non-Conjugate Transpose (A.').
<br>We are then asked the questions:
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
From our linear algebra lesson we know that we can get the solutions to a system of linear equations by using the inverse method.<img width="884" height="504" alt="image" src="https://github.com/user-attachments/assets/d6945e72-0dd1-49ac-9a6c-67139f98db02" /><br>



