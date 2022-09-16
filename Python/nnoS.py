############################
########### nnoS ###########
######### nslookup #########
########### name ###########
########## output ##########
######### Striper ##########
## Created by Philip Otter #
####Created August 2022 ####
############################

print('''
                                                                                                                          
                                                        SSSSSSSSSSSSSSS                                                   
                                                      SS:::::::::::::::S                                                  
                                                     S:::::SSSSSS::::::S                                                  
                                                     S:::::S     SSSSSSS                                                  
nnnn  nnnnnnnn    nnnn  nnnnnnnn       ooooooooooo   S:::::S                    ppppp   pppppppppyyyyyyy           yyyyyyy
n:::nn::::::::nn  n:::nn::::::::nn   oo:::::::::::oo S:::::S                    p::::ppp:::::::::py:::::y         y:::::y 
n::::::::::::::nn n::::::::::::::nn o:::::::::::::::o S::::SSSS                 p:::::::::::::::::py:::::y       y:::::y  
nn:::::::::::::::nnn:::::::::::::::no:::::ooooo:::::o  SS::::::SSSSS            pp::::::ppppp::::::py:::::y     y:::::y   
  n:::::nnnn:::::n  n:::::nnnn:::::no::::o     o::::o    SSS::::::::SS           p:::::p     p:::::p y:::::y   y:::::y    
  n::::n    n::::n  n::::n    n::::no::::o     o::::o       SSSSSS::::S          p:::::p     p:::::p  y:::::y y:::::y     
  n::::n    n::::n  n::::n    n::::no::::o     o::::o            S:::::S         p:::::p     p:::::p   y:::::y:::::y      
  n::::n    n::::n  n::::n    n::::no::::o     o::::o            S:::::S         p:::::p    p::::::p    y:::::::::y       
  n::::n    n::::n  n::::n    n::::no:::::ooooo:::::oSSSSSSS     S:::::S         p:::::ppppp:::::::p     y:::::::y        
  n::::n    n::::n  n::::n    n::::no:::::::::::::::oS::::::SSSSSS:::::S ......  p::::::::::::::::p       y:::::y         
  n::::n    n::::n  n::::n    n::::n oo:::::::::::oo S:::::::::::::::SS  .::::.  p::::::::::::::pp       y:::::y          
  nnnnnn    nnnnnn  nnnnnn    nnnnnn   ooooooooooo    SSSSSSSSSSSSSSS    ......  p::::::pppppppp        y:::::y           
                                                                                 p:::::p               y:::::y            
                                                                                 p:::::p              y:::::y             
                                                                                p:::::::p            y:::::y              
                                                                                p:::::::p           y:::::y               
                                                                                p:::::::p          yyyyyyy                
                                                                                ppppppppp      
''')

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
