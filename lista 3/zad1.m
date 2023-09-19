n=(1:16);
Fn = 1/sqrt(5) .* ( (( ( 1+sqrt(5) )./2).^n -(( ( 1-sqrt(5) )./2).^n )))'


f = string(sprintfc('F %d', 1:16))'
eq = ["=","=","=","=","=","=","=","=","=","=","=","=","=","=","=","="]'

T = table(f,eq,Fn)
writetable(T, 'Fibonaczi.txt','Delimiter',' ','QuoteStrings',false)
writetable(T, 'Fibonaczi.xlsx','Sheet','MyNewSheet','WriteVariableNames',false);