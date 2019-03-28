REPO := $(shell git config --get remote.origin.url)
OUTBRANCH = html
HTTPSERVER = node_modules/http-server/bin/http-server
PORT = 4200
ALLFILES = $(addprefix $(OUTBRANCH)/, $(addsuffix .html, $(basename $(wildcard *.md))))

.PHONY: clean init commit css layout

all: init clean $(OUTBRANCH) allfiles css

allfiles: $(ALLFILES) css

layout:
	rm -r html/*.html || true
	make $(ALLFILES)

css:
	cp -r ./css/ ./html/

$(OUTBRANCH):
	@echo $(REPO)
	git clone "$(REPO)" "$(OUTBRANCH)"
	@echo "Done"
	(cd $(OUTBRANCH) && git checkout $(OUTBRANCH)) || \
		(cd $(OUTBRANCH) && git checkout --orphan $(OUTBRANCH) && git rm -rf .)

$(OUTBRANCH)/%.html: %.md
	pandoc -s --template "_layout" --css "css/main.css" -f markdown -t html5 -o $@ $<

init:
	@command -v pandoc > /dev/null 2>&1 || (echo \
		'pandoc not found http://johnmacfarlane.net/pandoc/installing.html' \
		&& exit 1)
	@[ -x $(HTTPSERVER) ] || npm install

clean:
	rm -rf "$(OUTBRANCH)"

commit:
	cd $(OUTBRANCH) && \
		git add . && \
		git commit --edit --message="Publish @$$(date)"
	cd $(OUTBRANCH) && \
		git push origin $(OUTBRANCH)
serve:
	cd $(OUTBRANCH) && ../$(HTTPSERVER) -p $(PORT)
