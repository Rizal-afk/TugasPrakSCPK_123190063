%penyelesaian kasus menggunakan metode WP
clc;clear; %untuk membersihkan jendela command windows
[~, ~, raw0_0] = xlsread('Real estate valuation data set.xlsx','C2:E51');
[~, ~, raw0_1] = xlsread('Real estate valuation data set.xlsx','H2:H51');
raw = [raw0_0,raw0_1];

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
Realestatevaluationdataset = table;

%% Allocate imported array to column variable names
data1= data(:,1);
data2 = data(:,2);
data3 = data(:,3);
data4 = data(:,4);
data=[data1,data2,data3,data4];

k=[1,1,1,0];%atribut tiap-tiap kriteria, dimana nilai 1=atrribut keuntungan, dan 0= atribut biaya
w=[3,5,4,1];
%tahapan pertama, perbaikan bobot
[m n]=size (data); %inisialisasi ukuran data
w=w./sum(w); %membagi bobot per kriteria dengan jumlah total seluruh

%tahapan kedua, melakukan perhitungan vektor(S) per baris (alternatif)
for j=1:n,
    if k(j)==0, w(j)=-1*w(j);
    end;
end;
for i=1:m,
    S(i)=prod(data(i,:).^w);
end;

%tahapan ketiga, proses perangkingan
V= S/sum(S);

[nilai,idx] = sort(V,'descend');
disp("Data Tertinggi : ")
for i=1:5,
    for j=1:m,
        if nilai(i)== V(j) 
            a(i)=j;
            disp(i+". Data ke-"+a(i)+" : "+nilai(i))
        end
    end
end


