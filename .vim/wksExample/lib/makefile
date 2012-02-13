

INC = foo.h goo.h 
SRC = source/foo.c source/goo.c

OBJS = $(patsubst source/%.c, %.o,$(SRC))


all:libexample.a lib.vimprj

libexample.a: $(OBJS)
	$(AR) rvu $@ $(OBJS)
	ranlib $@

%.o : source/%.c
	$(CC) -c $< -o $@

lib.vimprj : makefile
	-rm -fr $@
	@echo \<make\> >> $@
	@echo makefile >> $@
	@echo \<include\> >> $@
	@for f in ${INC}; do echo $${f} >> $@ ;done
	@echo \<source\> >> $@
	@for f in ${SRC}; do echo $${f} >> $@ ;done 



clean:
	-rm -fr *.o *.a


