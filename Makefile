VPATH = $(wildcard tldr/pages/*)
SOURCE_PATHS = $(wildcard tldr/pages/*/*.md)
SOURCE_FILES = $(notdir $(SOURCE_PATHS))
OUTPUT_DIR = man1
MAN_FILES = $(SOURCE_FILES:.md=.1)
MAN_PATHS = $(addprefix $(OUTPUT_DIR)/,$(MAN_FILES))

.PHONY: tldr-man, clean
tldr-man: tldr $(OUTPUT_DIR) $(MAN_PATHS)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(OUTPUT_DIR)/%.1: %.md
	@sed 's/^> //' $< > $<.tmp
	ronn -r --pipe $<.tmp > $@ 2>/dev/null
	@rm $<.tmp

tldr:
	git clone https://github.com/tldr-pages/tldr.git

clean:
	rm man1/*.1
