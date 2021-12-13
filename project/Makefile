MODULES=author node playerstate cards board play graph colors board2
OBJECTS=$(MODULES:=.cmo)
MLS=$(MODULES:=.ml)
MLIS=$(MODULES:=.mli)
TEST=test.byte
MAIN=play.byte
PLAYERSTATETEST=playerstate.byte
OCAMLBUILD=ocamlbuild -use-ocamlfind

default: build
	utop

build:
	$(OCAMLBUILD) $(OBJECTS)

window:
	$(OCAMLBUILD) -tag 'debug' $(PLAY) && OCAMLRUNPARAM=b ./$(PLAY)

play:
	$(OCAMLBUILD) -tag 'debug' $(MAIN) && OCAMLRUNPARAM=b ./$(MAIN)

test:
	$(OCAMLBUILD) -tag 'debug' $(TEST) && ./$(TEST) -runner sequential

playerstatetest:
	$(OCAMLBUILD) -tag 'debug' $(PLAYERSTATETEST) && ./$(PLAYERSTATETEST) -runner sequential

clean:
	ocamlbuild -clean

zip:
	zip -r finalproject.zip *.ml* engine_test *.txt \
		_tags .merlin .ocamlformat .ocamlinit Makefile