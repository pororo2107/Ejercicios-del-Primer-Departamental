
i = 1
xl = 9
xu = 11
e(i) = 10

while(e(i)>0.01)
    xr = (xl + xu)/2

    gxl = (xl*(log(xl)))-10;
    gxr = (xr*(log(xr)))-10;
    gxu = (xu*(log(xu)))-10;

    if(gxl*gxr<0)
        xu = xr;
        e(i + 1) = abs(xr - xl)
    end
    if(gxu*gxr<0)
        xl = xr;
        e(i + 1) = abs(xr - xu)
    end
    i = i + 1;
    if(gxu*gxr==0)
        xr = xr;
    end
end

tamanio = size(e);
ite = 1:1:tamanio(2);
figure('DefaultAxesFontSize',14)
set(gcf,'color','white')
plot(ite,e,'color',[1,0,0],'linewidth',2)
grid on
xlabel('iterations')
ylabel('error')
legend('error')