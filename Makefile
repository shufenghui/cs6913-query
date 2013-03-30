CC= g++-mp-4.7
CFLAGS =  -std=c++11 -g -Wall #-pedantic-errors #-Werror
LIBS = -lz -L. -lgzstream

run_query: query
	./query test/lexicon.gz test/i2list test/i2chunk ./
query: query.cpp
	$(CC) $(CFLAGS) $(LIBS) -o query $^

clean:
	rm -rf query *.dSYM