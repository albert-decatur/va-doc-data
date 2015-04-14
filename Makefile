# NB: do not start by removing output/

all: output/%.tsv

output/%.tsv: output/%.xlsx
	for xlsx in output/*.xlsx;\
 	do \
		cat $$xlsx |\
		ssconvert --export-type Gnumeric_stf:stf_assistant -O 'separator="	"' fd://0 output/`basename $$xlsx .xlsx`.tsv;\
		rm $$xlsx;\
	done

output/%.xlsx: output/%.zip
	for zip in output/*.zip;\
	do \
		unzip -d output/ $$zip;\
		rm $$zip;\
	done

output/%.zip:
	-rm -r output/ 2>/dev/null
	mkdir output/ 2>/dev/null
	cp input/*.zip output/

clean:
	rm -rf output/
