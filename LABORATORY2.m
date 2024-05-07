% Clear
clear
clc
close all

syms t s

%% 1. Second Order Underdamped System

G1_num = [1];
G1_den = [1 2 1];
G1 = tf(G1_num,G1_den)
step(G1, 0.0:0.1:10)

%% 2. Second Order Overdamped System

G2_num = [1];
G2_denA = [1 2];
G2_denB = [1 3];
G2_den = conv(G2_denA,G2_denB)
G2 = tf(G2_num,G2_den)
step(G2, 0.0:0.1:10)

%% 3. Second Order Critically Damped System

G3_num = [1];
G3_denA = [1 1];
G3_denB = [1 1];
G3_den = conv(G3_denA,G3_denB)
G3 = tf(G3_num,G3_den)
step(G3, 0.0:0.1:10)

%% 4. First Order System

G4_num = [1];
G4_den = [1 1];
G4 = tf(G4_num,G4_den)
step(G4, 0.0:0.1:10)

%% 5. Resonant System

G5_num = [8 7 6 5 4 3 2];
G5_den = [1 2 3 4 5 6 7 1];
G5 = tf(G5_num,G5_den)
step(G5, 0:0.1:50)

%% 6. Electrical Filter with Multiple Poles

G6_num = [4 3 2 1];
G6_den = [1 2 3 4 1];
G6 = tf(G6_num,G6_den)
step(G6, -20:0.1:20)

%% 7. Plant with Time Delay

G7_num = [6 5 4 3 2];
G7_den = [1 2 3 4 5 1];
G7 = tf(G7_num,G7_den)
step(G7, 0:0.1:50)

%% 8. Nonlinear System Approximation

G8_num = [10 8 6 4 2];
G8_den = [1 3 5 7 9 1];
G8 = tf(G8_num,G8_den)
step(G8, -20:0.1:20)