CC = gcc
#The -Ofast might not work with older versions of gcc; in that case, use -O2
CFLAGS = -lm -pthread -march=native -Wall -funroll-loops -Ofast -Wno-unused-result

all: text2vec word2phrase distance word-analogy compute-accuracy runCLDC

text2vec : text2vec.c
	$(CC) text2vec.c -o text2vec $(CFLAGS)
word2phrase : word2phrase.c
	$(CC) word2phrase.c -o word2phrase $(CFLAGS)
distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)
word-analogy : word-analogy.c
	$(CC) word-analogy.c -o word-analogy $(CFLAGS)
compute-accuracy : compute-accuracy.c
	$(CC) compute-accuracy.c -o compute-accuracy $(CFLAGS)
	chmod +x *.sh
runCLDC : runCLDC.c
	$(CC) runCLDC.c -o runCLDC $(CFLAGS)

clean:
	rm -rf text2vec word2phrase distance word-analogy compute-accuracy runCLDC
