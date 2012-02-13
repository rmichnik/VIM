

INC = 
SRC = source/main.c

OBJS = $(patsubst source/%.c, %.o,$(SRC))


all:prog prog.vimprj

prog: $(OBJS)
	gcc -o $@ $(OBJS) ../lib/libexample.a

%.o : source/%.c
	$(CC) -c $< -o $@

prog.vimprj : makefile
	-rm -fr $@
	@echo \<make\> >> $@
	@echo makefile >> $@
	@echo \<include\> >> $@
	@for f in ${INC}; do echo $${f} >> $@ ;done
	@echo \<source\> >> $@
	@for f in ${SRC}; do echo $${f} >> $@ ;done 



clean:
	-rm -fr *.o prog


