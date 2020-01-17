def multiplication(a, b)
    res=0
    while b>0
      res+=a if (b&1==1)
      a<<=1               # a*2
      b>>=1               # b/2
    end
    res
end
multiplication(10,31) # => 310
