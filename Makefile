all: upload

upload: index.html
	scp $< thomas.fossati@people.linaro.org:~/public_html/top20/

index.html: index.md ; showdown makehtml -i $< -o $@

clean: ; $(RM) -f index.html
