.PHONY : all clean test
all:
	$(MAKE) -C call_my_interrupt $@
	$(MAKE) -C my_seabios $@
	
clean:
	$(MAKE) -C call_my_interrupt $@
	$(MAKE) -C my_seabios $@
	
test:
	$(MAKE) -C call_my_interrupt all
	$(MAKE) -C my_seabios $@