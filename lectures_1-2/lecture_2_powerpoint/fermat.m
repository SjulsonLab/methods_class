%% did Homer Simpson disprove Fermat's Last Theorem?
% It states that there are no positive integer solutions to
%
% x^n + y^n = z^n
% for any n > 2.
%
% However, Homer is shown writing this on a blackboard:
%
% 3987^12 + 4365^12 = 4472^12
%
% is he right?

clear all
clc
format long % this is to print all the decimal places

%% set variables
disp('Fermat''s Theorem state: there are no positive integer solutions for');
disp('x^n + y^n = z^n, where n > 2');
disp(' ');
disp('Homer wrote: 3987^12 + 4365^12 = 4472^12');
% disp(' ');
% disp([]);

x = 3987
y = 4365
z = 4472

whos

%% show answer
disp('The answer is:');
disp(' ');
disp(['x^12 + y^12 = ' num2str(x^12 + y^12)])
disp(['       z^12 = ' num2str(z^12)])
disp(' ')

%% calculate difference
disp('Was Homer right? How big is the error?');
disp(['x^12 + y^12 - z^12 = ' num2str(x^12 + y^12 - z^12)])
disp(' ');
