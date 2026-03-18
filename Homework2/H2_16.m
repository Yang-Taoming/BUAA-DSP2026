%% 主脚本部分
clear; clc; close all;

% 定义要绘制的范围
n = 0:20;

% 调用在文件末尾定义的函数
y = my_output_function(n);

% 绘图
figure;
stem(n, y, 'filled', 'r', 'LineWidth', 1.5);
title('输出信号 y[n]');
xlabel('n'); ylabel('幅度');
grid on;

% =====================================
% 局部函数定义（必须在文件末尾）
% =====================================
function y = my_output_function(n)
    % 输出函数的解析表达式
    
    for i = 1:length(n)
        if n(i) < 5
            y(i) = -(0.5)^n(i)+2;
        else
            y(i) = 0.5^n(i)*31;
        end
    end
end
