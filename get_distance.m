function distance = get_distance(a,b)
   [~,~,myarr] = xlsread('Distances.xlsx'); 
    mysize = size(myarr);

    x = -1;
    y = -1;
    for i = 1:mysize
       if strcmp(myarr{1,i},a)
           x = i;
           break;
       end
    end
    for i = 1:mysize
       if strcmp(myarr{1,i},b)
           y = i;
           break;
       end
    end
    if x ==-1 || y== -1
        distance = -1;
    else
        distance = myarr{y,x};
    end
end