clc

x=[1,2.2,-5,3,4]
n=0:1:length(x)-1
figure(1)
stem(n,x);
xlabel('n');
Rxx=xcorr(x,x)
nRxx=-length(x)+1:length(x)-1
figure(2)
stem(nRxx,Rxx)
energy=sum(x.^2)
centre_index=ceil(length(Rxx)/2)
Rxx_0=Rxx(centre_index)
if Rxx_0==energy
    disp('Rxx(0) gives energy proved')
else
    disp('Rxx(0) gives energy not proved')
end
Rxx_right=Rxx(centre_index:1:length(Rxx))
Rxx_left=Rxx(centre_index:-1:1)
if Rxx_right==Rxx_left
    disp('Rxx is even')
else
    disp('Rxx is not even');
end
