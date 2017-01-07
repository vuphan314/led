input_base=tmp # precedence, tictactoe, tmp

examples_path=../examples
base_path=$examples_path/$input_base
led_path=$base_path.led
tex_path=$base_path.tex
out_path=$examples_path
pdf_path=$out_path/$base_path.pdf

# atom $tex_path
evince $pdf_path

# python3 led_parser.py $led_path
python3 led_engine.py -f $led_path
latexmk -pdf -outdir=$out_path $base_path
