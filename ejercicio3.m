xu=-2
i=1
xl=-4;
e(i) = 10

while (e(i) > 0.01)
    xr=(xl+xu)/2
    gxl= xl^3+10*(xl)-5
    gxr= xr^3+10*(xr)-5
    gxu= xu^3+10*(xu)-5
    
    if (gxl*gxr < 0)
        xu=xr
        e(i+1)=abs(xr-xl)
    end
    
    if (gxu*gxr < 0)
        xl=xr 
        e(i+1)= abs(xu-xr)
    end
    i=i+1;
    
    if (gxu*gxr==0)
        xr=xr;
    end 
end

tamanio = size(e);
ite= 1:1:tamanio(2);
figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')