# NB: do not start by removing scratch/

scratch/*.xlsx: scratch/*.zip
	for zip in scratch/*.zip;\
	do \
		unzip -d scratch/ $$zip;\
		rm $$zip;\
	done

scratch/*.zip:
	-rm -r scratch/ 2>/dev/null
	mkdir scratch/ 2>/dev/null
	cp input/*.zip scratch/

clean:
	rm -rf scratch/
