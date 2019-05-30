# vhdldep

> Simple VHDL dependency generator.

An automatic dependency analyzer for VHDL source files, which can be used in a makefile of a VHDL project. It analyses use statements of one or more VHDL files and returns their file dependencies in a format of makefile rules. Dependencies to STD and IEEE libraries are ignored. Final dependencies can be included into a project makefile to make building VHDL components possible. The project is developed to work with [GHDL](https://github.com/ghdl/ghdl).

---

Remember to be explicit in use statements; every component that is about to be used in a VHDL file must be accompanied with the appropriate use statement when using this program with that VHDL file.

## Help

Output of the `./vhdldep -help` terminal command opened in the project *bin* directory:

```
Usage: ./vhdldep [OPTION]... FILE...

OPTION:
  -object-dir=DIR  object files directory path
  --               force the following arguments to be file names
  -help            display this help and exit
  -about           display information about this program and exit
```

---

An example of using this program:

<pre>
.../vhdldep/bin $ <b>./vhdldep -object-dir=my_obj_dir tb/lifo_tb.vhdl</b>
my_obj_dir/lifo_tb.o: tb/lifo_tb.vhdl my_obj_dir/string_pkg.o my_obj_dir/lifo.o
.../vhdldep/bin $ 
</pre>

The *lifo_tb.vhdl* file has been taken from the [vhdl_collection](https://github.com/dominiksalvet/vhdl_collection) repository.

## Contributing

Do you want to contribute? Do you have any questions? Then the [*CONTRIBUTING.md*](CONTRIBUTING.md) file is here for you.

## License

Licensing policy of gim is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).

The preferred license is the **MIT License** as stated in the [*LICENSE.txt*](LICENSE.txt) file.
