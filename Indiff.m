%% Indifference Curves
% A script which makes 2-and-3 factors Indifference Curves
%% Author: Diego Ciccia


%% 2 Factors Indifference Curves
% By using a Cobb-Douglas utility function, the script creates an
% indifference curve for each level of utility inside the vector U.

U=[5, 10, 15, 20,25, 30, 35];%Utility levels
L=50; %max amount of each good
T=1E4;
X=zeros(T,1);
Y=zeros(T,1);
n=1;
e=0.1; %error term
a=0.5; %exponent on the Cobb-Douglas function
sz=0.5;
for u=1:length(U)
    for i=0.01:0.01:L
        for j=0.01:0.01:L
            v=(i^a)*(j^(1-a));
            if v<U(u)+e && v>U(u)-e
                Y(n,1)=i;
                X(n,1)=j;
                n=n+1;
            end
        end    
    end
    scatter(X,Y, sz,'b','filled')
    txt=['U = ', num2str(U(u))];
    text(U(u)+1,U(u)+1,txt);
    hold on
    grid on
    X=zeros(T,1);
    Y=zeros(T,1);
    xlabel('X');
    ylabel('Y');
    
end

%% 3 Factors Indifference Curve

U=[2, 3, 5, 7]; %Utility levels
L=10; %max amount of each good
T=1E5;
X=zeros(T,1);
Y=zeros(T,1);
Z=zeros(T,1);
n=1;
e=0.2; %error term
a=1/3; %exponent on the Cobb-Douglas function
sz=0.5;
for u=1:length(U)
    for i=0.1:0.1:L
        for j=0.1:0.1:L
            for z=0.1:0.1:L
                v=(i^a)*(j^a)*(z^a);
                if v<U(u)+e && v>U(u)-e
                    Y(n,1)=i;
                    X(n,1)=j;
                    Z(n,1)=z;
                    n=n+1;
                end
            end
        end    
    end
    scatter3(X,Y,Z, sz,'filled')
    txt=['U = ', num2str(U(u))];
    text(U(u)+1,U(u)+1,U(u)+1,txt);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    hold on
    grid on
    X=zeros(T,1);
    Y=zeros(T,1);
    Z=zeros(T,1);
end  