% Name: Bantigue, Liam S.
% Section: 2ECE-A
% EXPERIMENT 5: INTRODUCTION TO MATLAB PROGRAMMING

clear; clc;

disp('PROBLEM A: TRANSPOSE OPERATIONS');
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1];
Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i];

disp('Real Matrix R');
A = R;
disp('A replaced by R:'); disp(A);
disp('transpose(A):'); disp(transpose(A));
disp('A'':'); disp(A');
disp('A.'':'); disp(A.');

disp('Complex Matrix Z');
A = Z;
disp('A replaced by Z:'); disp(A);
disp('transpose(A):'); disp(transpose(A));
disp('A'':'); disp(A');
disp('A.'':'); disp(A.');

% Transpose Questions
% a. Which operations give identical results for the real matrix R?
%    - transpose(A), A', and A.' all give identical results because A contains only real entries, 
%       meaning complex conjugation has no effect.
%
% b. Which two operations give identical results for the complex matrix Z?
%    - transpose(A) and A.' give identical results because both perform a standard non-conjugate matrix transpose.
%
% c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?
%    - The apostrophe operator (') performs the complex conjugate transpose, which takes the complex conjugate 
%       of each element in addition to transposing the rows and columns.



disp('PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM');
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2];
b = [16; -7; 6; 7];

% Inverse Method
x_inv = inv(A) * b;
disp('Solution using Inverse Method (x_inv):'); disp(x_inv);

% Cramer's Rule
detA = det(A);
disp('Determinant of A:'); disp(detA);


n = length(b);                      % Determines the number of variables (n = 4)
x_cramer = zeros(n, 1);             % Pre-allocates a column vector of zeros to store the solution variables.
for i = 1:n                         % Loops through each column index from 1 to 4.
    Ai = A;                         % Creates a temporary copy of coefficient matrix A.
    Ai(:, i) = b;                   % Replaces the i-th column of the temporary matrix with the right-hand-side vector b.
    x_cramer(i) = det(Ai) / detA;   % Solves by dividing the determinant of the modified matrix by the determinant of the original matrix A.
end

disp('Solution using Cramer''s Rule (x_cramer):'); disp(x_cramer);
disp('Required check norm(x_inv-x_cramer)');       disp(norm(x_inv-x_cramer));
disp('Required check norm(A*x_inv-b)');            disp(norm(A*x_inv-b));