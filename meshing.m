r=input('enter the number of rows=');
c=input('enter the number of columns=');
axis([1 r 1 c])
axes('color','w')
grid on
loop=1;
for i=1:(r-1)
    for j=1:(c-1)
        text(j+0.5,i+0.5,int2str(loop),'color','b')
        loop=loop+1;
    end
end
lloop=1;
for i=1:(r)
    for j=1:(c)
        hold on
        text(j,i,int2str(lloop),'BackgroundColor',[0 1 0],'color',[0.1 0 0.1])
        lloop=lloop+1;
    end
end
if r>c
    bv=r;
else
    bv=c;
end
for i=1:(bv)
    for j=1:(bv)
        plot(i,j)
        hold on
    end
end
inpcheck=((r-1)*(c-1));
inp=input('please enter the element number, whose nodes are required  ');
if inp>inpcheck
    str1='The maximum possible number of elment is  ';
    str2= num2str(inpcheck);
    fprintf('%s', str1, str2)
else
end
  pnode=0;
  qnode=0;
  rnode=0;
  snode=0;
  bvar=0;
  
	  if rem(inp,c-1) > 0
	  
	      bvar=inp/(c-1);
	      pnode=inp+bvar;
	  else
	  
	      bvar=inp/(c-1)-1;
	      pnode=inp+bvar;
	  end
	  qnode=pnode+1;
	  rnode=pnode+c;
	  snode=rnode+1;
      str3=num2str(pnode-0.5);
      str4=num2str(qnode-0.5);
      str5=num2str(rnode-0.5);
      str6=num2str(snode-0.5);
      str7='local node 1=';
      str8='  local node 2=';
      str9='  local node 3=';
      str10=' local node 4=';
fprintf('%s', str7,str3,str8,str4,str9,str5,str10,str6)

