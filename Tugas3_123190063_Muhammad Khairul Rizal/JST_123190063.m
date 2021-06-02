net = newp([0 1; 0 1],1);%pembentukan perceptron

%Definisi pola input yang akan dihitung
p1 = [1;1];
p2 = [1;0];
p3 = [0;1];
p4 = [0;0];
p = [p1 p2 p3 p4];

%Definisi Target 
t1 = 1;
t2 = 1;
t3 = 1;
t4 = 0;
t = [t1 t2 t3 t4];

%Definisi bobot awal
bobot = [-1 1];
net.IW{1,1} = bobot;

%Definisi nilai bias awal
bias = [1];
net.b{1} = bias;

%Menghitung hasil keluaran perceptron tanpa memperdulikan target
disp("Output hasil tanpa memperdulikan target");
a = sim(net,p)

%Menghitung keluaran perceptron pada setiap pola input
%a1 = sim(net,p1);
%e1 = t1 - a1;
%dW = learnp(bobot,p1,[],[],[],[],e1,[],[],[],[]); terdapat error pada
%statement line 31 di MATLAB saya
%bobot = bobot + dW;

disp("Menjalankan pelatihan perceptron : ");
net = train(net,p,t)

disp("Nilai Optimum untuk bobot w1 dan w2 : ");
disp (net.IW{1,1})

disp("Nilai Optimum untuk bias : ");
disp (net.b{1})