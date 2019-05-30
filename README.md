# vhdldep

> Simple VHDL dependency generator.

An automatic dependency analyzer for VHDL source files, which can be used in a makefile of a VHDL project. It analyses use statements of one or more VHDL files and returns their file dependencies in a format of makefile rules. Dependencies to STD and IEEE libraries are ignored. Final dependencies can be included into a project makefile to make building VHDL components possible. The project is developed to work with [GHDL](https://github.com/ghdl/ghdl).

---

Remember to be explicit in use statements; every component that is about to be used in a VHDL file must be accompanied with the appropriate use statement when using this program with that VHDL file.

## Help

Output of the `./vhdldep -help` terminal command opened in the project *src* directory:

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
.../vhdldep/src $ <b>./vhdldep -object-dir=my_obj_dir tb/lifo_tb.vhdl</b>
my_obj_dir/lifo_tb.o: tb/lifo_tb.vhdl my_obj_dir/string_pkg.o my_obj_dir/lifo.o
.../vhdldep/src $ 
</pre>

The *lifo_tb.vhdl* file has been taken from the [vhdl_collection](https://gitlab.com/dominiksalvet/vhdl_collection) repository.

## Contribute

See the [*CONTRIBUTING.md*](CONTRIBUTING.md) file for details.

## License

Licensing policy of this project is compliant with [REUSE Practices](https://reuse.software/practices/2.0/). Therefore, the license of a file of this project is determined by a [SPDX](https://spdx.org/) License Identifier or by the [*debian/copyright*](debian/copyright) file content.
