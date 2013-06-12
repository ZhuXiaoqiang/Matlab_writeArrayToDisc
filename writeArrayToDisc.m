function writeArrayToDisc( Array, name,numberStyle)
%WRITETODISC Summary of this function goes here
%   Detailed explanation goes here
   
%   numberStyle=1 : int
%   numberStyle=2 : double
%   numberStyle=3 : char


   fid=fopen(name,'wt');
    for i=1:size(Array,1)
        for j=1:size(Array,2)-1
            if numberStyle==1
                fprintf(fid,'%d ',Array(i,j));
            end
            if numberStyle==2
                fprintf(fid,'%f ',Array(i,j));
            end
            if numberStyle==3
                fprintf(fid,'%c ',Array(i,j));
            end
        end
        for j=size(Array,2)
            if numberStyle==1
                fprintf(fid,'%d',Array(i,j));
            end
            if numberStyle==2
                fprintf(fid,'%f',Array(i,j));
            end
            if numberStyle==3
                fprintf(fid,'%c',Array(i,j));
            end
        end     
        fprintf(fid,'\n');
    end
    fclose(fid);
   
    
    
end

