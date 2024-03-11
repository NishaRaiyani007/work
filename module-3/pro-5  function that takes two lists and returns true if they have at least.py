list1=[1,2,3,4,5]
list2=[6,7,8,9,3]
result=False
for x in list1:
    for y in list2:
        if x==y:
            result=True

if result:
    print("one common member")
else:
    print("not any common member")
