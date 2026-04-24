set shell := ["powershell"]

gen:
	fontforge -lang=py -script "./scripts/smufl_toolkit.py" glyph-rename "./" -a -f
	fontforge -lang=py -script "./scripts/smufl_toolkit.py" export-meta "./"
	fontforge -lang=py -script "./scripts/gen_fonts.py" "./"