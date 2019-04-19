
# Replace Color In Image With Transparency

In each picture file replace specified color with transparency. 
Command line utility. 
You can process many files by executing one command. 
Prepare the application for all possible situations and errors.
This application was developed on Linux but it should run on Windows and other systems.
This application requires Python version 3.7 or higher, (because the argument 'capture_output' of the method 'subprocess.run' was added in python 3.7) . This application requires command line utility 'convert' that is part of the software ImageMagick. 
Run this application from command line with argument '--help' or '-h' to get full description of this application.

## Requirements:

1) Python programming language version 3.7 or higher.

2) Command line utility 'convert' that is part of the software ImageMagick

## Examples of usage

### On linux

```
python3.7 replace_color_in_image_with_transparency.py --help;
```

```
python3.7 replace_color_in_image_with_transparency.py "path/to/image/file/with/color/to/be/replaced.jpg";
```

```
python3.7 replace_color_in_image_with_transparency.py --color "rgb(0,0,0)" --filename-add "_transparent_instead_of_black" --output-dir "path/to/output/directory" "path/to/image/file/with/color/to/be/replaced.jpg";
```

```
ls directory/with/images/* | xargs python3.7 replace_color_in_image_with_transparency.py --color "rgb(0,0,0)" --filename-add "_transparent_instead_of_black" --output-dir "path/to/output/directory";
```

### On Windows

Examples of use on Windows should be similar as on Linux may be with slight modifications.
You may search internet for queries: 

* running Python script on Windows
* Can I run Linux commands on Windows?
* command line pipe Windows
* command line xargs Windows

## Authors

František Brožka

## License

GNU General Public License v3.0
