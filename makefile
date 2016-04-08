GHC=stack runghc -- 

SRC=$(wildcard *.hs)
TARGETS=$(patsubst %.hs, %, $(SRC))
HIFILES=$(patsubst %.hs, %.hi, $(SRC))
OFILES=$(patsubst %.hs, %.o, $(SRC))

all: $(TARGETS) 

%: %.hs
	$(GHC) $@

clean:
	rm -f $(TARGETS)
	rm -f $(HIFILES)
	rm -f $(OFILES)
