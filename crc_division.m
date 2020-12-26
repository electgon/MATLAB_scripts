clear

pkg load communications

% dividend = [1,1,1,1,1,1,1,1, ...
            % 1,1,1,1,1,1,1,1, ...
            % 1,1,1,1,1,1,1,1, ...
            % 1,1,1,1,1,1,1,1, ...
            % 0,0,0,0,0,0,0,0, ...
            % 0,0,0,0,0,0,0,0, ...
            % 0,0,0,0,0,0,0,0, ...
            % 0,0,0,0,0,0,0,0];
% divisor =  [1,0,0,0,0,0,1,0, ...
            % 0,1,1,0,0,0,0,0, ...
            % 1,0,0,0,1,1,1,0, ...
            % 1,1,0,1,1,0,1,1,1];

dividend = [1,1,0,1,0,1,1,0,1,1,0,0,0,0];
divisor =[1,0,0,1,1];


len_end = length(dividend);
len_sor = length(divisor);

if (len_sor <= len_end)
   len_diff = len_end - len_sor;
   for app_idx = len_sor+1 : len_sor+len_diff
       divisor(:, app_idx) = 0;
   end
else
    printf("Division is not possible, dividend must be longer than divisor\n")
end

if (len_diff >= 0)
    for div_idx = 1:len_diff+1 
        
        if (dividend(div_idx) == 1)
            dividend = xor(dividend, divisor);
            div_res(div_idx) = 1;
        else
            div_res(div_idx) = 0;
        end
        if (div_idx == len_diff+1)
            break;
        end
        divisor = shift(divisor, 1);
        divisor(:,1) = 0;
        
    end
end

quotient  = dec2hex(bi2de(div_res, 'left-msb'))
remainder = dec2hex(bi2de(dividend, 'left-msb'))
divisor = dec2hex(bi2de(divisor, 'left-msb'))
