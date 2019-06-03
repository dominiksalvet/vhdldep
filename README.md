# vhdldep

[![gim ready](https://img.shields.io/badge/gim-ready-571997.svg)](https://github.com/dominiksalvet/gim)
[![reuse compliant](https://reuse.software/badge/reuse-compliant.svg)](https://reuse.software/)
[![standard-readme compliant](https://img.shields.io/badge/readme_style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)

> Simple VHDL dependency generator.

The development of VHDL projects very often involves building multiple VHDL files. Based on designed architecture, some files must be built before others. That might cause problems with finding the correct build order. And that is exactly where vhdldep comes in handy.

Vhdldep analyzes use statements of given VHDL files and returns their file dependencies in a makefile format. That output can be easily used to determine the correct build order to help automate building VHDL projects.

## Install

Vhdldep is [gim ready](https://github.com/dominiksalvet/gim). Local installation:

```sh
gim install github.com/dominiksalvet/vhdldep
```

## Usage

Get VHDL file's dependencies:

```
vhdldep <file>
```

With custom prefix for generated paths:

```
vhdldep -p <prefix> <file>
```

### Example

<p align="center">
    <a href="https://github.com/dominiksalvet/vhdldep">
        <img src="img/example.png" alt="vhdldep example"></a>
</p>

The *alu.vhdl* file has been borrowed from the [Limen Alpha](https://github.com/dominiksalvet/limen_alpha) processor.

## Contributing

Do you want to contribute? Do you have any questions? Then the [*CONTRIBUTING.md*](CONTRIBUTING.md) file is here for you.

## License

Licensing policy of vhdldep is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).

The preferred license is the **MIT License** as stated in the [*LICENSE.txt*](LICENSE.txt) file.
