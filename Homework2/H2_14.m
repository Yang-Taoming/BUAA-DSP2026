%% 清空环境
clear; clc; close all;

%% 定义序列
% x[n] = R4[n] (n = 0,1,2,3)
x = [1, 0.5,0.25,0.125];      % 序列值
nx = 0:3;               % 对应的时间索引

% h[n] = R6[n] (n = 0,1,2,3,4,5,6)
h = [1];          % 序列值
nh = 2;               % 对应的时间索引

%% 计算卷积
y = conv(x, h);         % 卷积结果

% 卷积结果的时间索引计算
% 如果 x 从 nx_start 到 nx_end，h 从 nh_start 到 nh_end
% 则 y 从 (nx_start + nh_start) 到 (nx_end + nh_end)
ny_start = nx(1) + nh(1);
ny_end = nx(end) + nh(end);
ny = ny_start : ny_end;

%% 绘制结果
figure;

% 子图1：x[n]
subplot(3,1,1);
stem(nx, x, 'filled', 'LineWidth', 1.5);
title('原始序列 x[n] = (1/2)^n*R_4[n]');
xlabel('n'); ylabel('幅度');
grid on;
xlim([-1, 6]);
ylim([0, 2]);

% 子图2：h[n]
subplot(3,1,2);
stem(nh, h, 'filled', 'LineWidth', 1.5);
title('冲激响应 h[n]');
xlabel('n'); ylabel('幅度');
grid on;
xlim([-1, 6]);
ylim([0, 2]);

% 子图3：卷积结果 y[n]
subplot(3,1,3);
stem(ny, y, 'filled', 'LineWidth', 1.5, 'Color', 'r');
title('卷积结果 y[n] = x[n] * h[n]');
xlabel('n'); ylabel('幅度');
grid on;
xlim([-1, 6]);
ylim([0, 2]);