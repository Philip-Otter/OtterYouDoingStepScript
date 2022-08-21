#nslookup
#name
#output
#Striper

select=input("Please provide the name of the file that you would like worked through\n")
print("\n\n")
boolOutput=input("would you like to output this into a new file:  JustNames"+select+"  [y/n]")

if boolOutput!="y":
    boolOutput = False

origFile=open(select, 'r')
if boolOutput:
    newFile=open("JustNames"+select, 'w')

for line in origFile:
    origLine=line.strip()

    subString="Name"

    if subString in origLine:
        print(origLine)
        if boolOutput:
            newFile.write(origLine+"\n")


origFile.close()
print("\n\n")