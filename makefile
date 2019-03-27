REPO := $(shell git config --get remote.origin.url)
OUTBRANCH = html

.PHONY: clean init commit

all: init clean $(OUTBRANCH) $(addsuffix .html, $(basename $(wildcard *.md)))

$(OUTBRANCH):
	@echo $(REPO)
	git clone "$(REPO)" "$(OUTBRANCH)"
	@echo "Done"
	(cd $(OUTBRANCH) && git checkout $(OUTBRANCH)) || \
		(cd $(OUTBRANCH) && git checkout --orphan $(OUTBRANCH) && git rm -rf .)

%.html: %.md
	pandoc -s --template "_layout" --css \
		"css/main.css" -f markdown -t html5 -o $(OUTBRANCH)/$@ $<

init:
	@command -v pandoc > /dev/null 2>&1 || (echo \
		'pandoc not found http://johnmacfarlane.net/pandoc/installing.html' \
		&& exit 1)

clean:
	rm -rf "$(OUTBRANCH)"

commit:
	cd $(OUTBRANCH) && \
		git add . && \
		git commit --edit --message="Publish @$$(date)"
	cd $(OUTBRANCH) && \
		git push origin $(OUTBRANCH)

