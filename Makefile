# NB: do not start by removing scratch/

all: scratch/%.tsv

scratch/%.tsv: scratch/%.xlsx
	for xlsx in scratch/*.xlsx; do  cat $$xlsx | ssconvert --export-type Gnumeric_stf:stf_assistant -O 'separator="	"' fd://0 scratch/`basename $$xlsx .xlsx`.tsv; rm $$xlsx; done

scratch/%.xlsx: scratch/%.zip
	for zip in scratch/*.zip;\
	do \
		unzip -d scratch/ $$zip;\
		rm $$zip;\
	done

scratch/%.zip:
	-rm -r scratch/ 2>/dev/null
	mkdir scratch/ 2>/dev/null
	cp input/*.zip scratch/

clean:
	rm -rf scratch/
