cntr=0
for s1 in range(1,10):
    for s2 in range(10):
        for s3 in range(10):
            if s1==s2 or s2==s3:
                cntr+=1
                print("#{}: {}{}{}".format(cntr,s1,s2,s3))