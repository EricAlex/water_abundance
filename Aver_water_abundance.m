function [water_aver,dwater_aver]=Aver_water_abundance()
[x,y,total]=xlsread('���ܡ���ά����');
%[a,b]=size(total);
fs={'year';'area';'date';'season';'abundance'};
water_struct=cell2struct(total,fs,2);
Year=(2000:2014);
Area={'ʯ��';'����';'10';'9';'8';'7';'����';'6,';'5';'4';'3';'2';'1';'����ͥ'};
Season={'��';'��';'��';'��'};
water_aver=zeros(4,15,14);


[n,m]=size(water_struct);
x=1;y=1;

        for b=1:4
      %  {
            for a=2000:2014
          %  {
                for c=1:14
              % { 
                   % Static=zeros(1,1);
                    j=1;
                    for i=1:n
                   % {
                        if(water_struct(i).year==a&strcmp(water_struct(i).area,Area(c))&strcmp(water_struct(i).season,Season(b)))
                           % if(strcmp(water_struct(i).area,Area(c)))
                          %  if(strcmp(water_struct(i).season,Season(b)))
                    %   { 
                          Static(j)=water_struct(i).abundance;
                            j=j+1;
                   %    }
                          %  end
                        %    end
                        end 
                   % }
                    end
                 sort(Static);
                 water_aver(b,a-1999,c)=( Static(1)+ Static(2)+ Static(3)+ Static(4)+Static(5))/5.0;
                % Static(1:j)=[];
                 
               % }
                end
           % }
            end
       % }
        end
   
%figure,hist(water_aver);
save('D:\\modis\\�ĵ�����\\ƽ��ֵ.mat','water_aver');
dwater_aver=reshape(water_aver,60,14);
%xlswrite('D:\\modis\\�ĵ�����\\dƽ��ֵ.xls',dwater_aver,'sheet1','A1');


                    
            
        
                
            
    

            
        
        
      