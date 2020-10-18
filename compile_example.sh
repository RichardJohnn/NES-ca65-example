rm example.o
rm example.nes
rm example.map.txt
rm example.labels.txt
rm example.nes.ram.nl
rm example.nes.0.nl
rm example.nes.1.nl
rm example.nes.dbg
echo Compiling...
ca65 example.s -g -o example.o
echo Linking...
ld65 -o example.nes -C example.cfg example.o -m example.map.txt -Ln example.labels.txt --dbgfile example.nes.dbg
echo Generating FCEUX debug symbols...
python3 example_fceux_symbols.py
echo Success!
