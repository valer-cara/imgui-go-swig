.PHONY: build show-symbols

all: build show-symbols

build:
	go build -o main ./

show-symbols:
	@echo ""
	@echo ""
	@echo "Here are the symbols matching 'foo' in this demo package."
	@echo "Use 'readelf -aW ./main | less' to navigate freely."
	@echo "Note that some are in .dynsym, others in .symtab"
	@echo "-----------"
	@echo ""
	@echo ""

	readelf -a -W ./main | grep -i foo

