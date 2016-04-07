SRC=$(wildcard *.hs)
TARGETS=$(patsubst %.hs, %, $(SRC))
HIFILES=$(patsubst %.hs, %.hi, $(SRC))
OFILES=$(patsubst %.hs, %.o, $(SRC))

all: $(TARGETS) 

%: %.hs
	ghc --make $@

clean:
	rm -f $(TARGETS)
	rm -f $(HIFILES)
	rm -f $(OFILES)
