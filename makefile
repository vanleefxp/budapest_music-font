CURRENT_DIR := $(dir $(MAKEFILE_LIST))

gen:
	fontforge -lang=py -script "$(CURRENT_DIR)/smufl_glyph_rename.py" "./" -u
	fontforge -lang=py -script "$(CURRENT_DIR)/gen_fonts.py"