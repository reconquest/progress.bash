REFERENCE.md: spinner/*.bash
	rm -f REFERENCE.md
	vendor/github.com/reconquest/shdoc/shdoc < $^ >> REFERENCE.md
