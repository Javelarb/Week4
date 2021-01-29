rule all:
	input:
		"mtcars.sqlite3",
		"mtcars.png"

rule make_sqlite3:
	output:
		"mtcars.sqlite3"
	script:
		"sqlite3_maker.R"

rule make_plot:
	input:
		"mtcars.sqlite3"
	output:
		"mtcars.png"
	script:
		"plot_gen.py"
