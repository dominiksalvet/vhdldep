# VHDL Makedepend

An automatic dependency analyzer for VHDL source files, which can be used in a makefile of a VHDL project. It analyses use statements of one or more VHDL files and returns their file dependencies in a format of makefile rules. Dependencies to STD and IEEE libraries are ignored. Final dependencies can be included into a project makefile to make building VHDL components possible. The project is developed to work with [GHDL](https://github.com/ghdl/ghdl).

---

Remember to be explicit in use statements; every component that is about to be used in a VHDL file must be accompanied with the appropriate use statement when using this program with that VHDL file.

## Help

Output of the `./vhdl-makedepend -help` terminal command opened in the project *src* directory:

```
Usage: ./vhdl-makedepend [OPTION]... FILE...

OPTION:
  -object-dir=DIR  object files directory path
  --               force the following arguments to be file names
  -help            display this help and exit
  -about           display information about this program and exit
```

---

An example of using this program:

<pre>
.../vhdl-makedepend/src $ <b>./vhdl-makedepend -object-dir=my_obj_dir tb/lifo_tb.vhdl</b>
my_obj_dir/lifo_tb.o: tb/lifo_tb.vhdl my_obj_dir/string_pkg.o my_obj_dir/lifo.o
.../vhdl-makedepend/src $ 
</pre>

The *lifo_tb.vhdl* file has been taken from the [vhdl_collection](https://gitlab.com/dominiksalvet/vhdl_collection) repository.

## License

This project is licensed under an [Open Source Initiative](https://opensource.org/) approved license, the MIT License. See the [*LICENSE.md*](LICENSE.md) file for details. Individual files contain the [SPDX](https://spdx.org/) license identifier instead of the full license text, and they are always licensed under the license defined by that license identifier even if it differs from the project license.
