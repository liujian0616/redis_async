CC = gcc
CCC = g++
CFLAG = -g
LDFLAG = -g
INC= -I/usr/include/hiredis -I/usr/local/include
LIB= -L/usr/lib64/ -lhiredis  -L/usr/local/lib -lev 

APP=test

OBJS = nbredis.o test.o 

$(APP):$(OBJS)
	$(CCC) -o $@ $^ $(LIB)

%.o:%.cpp
	$(CCC) $(CFLAG) -c -o $@ $< $(INC)

%.o:%.c
	$(CC) $(CFLAG) -c -o $@ $< $(INC)

clean:
	@rm -rf $(OBJS)
	@rm -rf $(APP)
