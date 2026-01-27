# CODECHECK certificate 2025-023
## [https://doi.org/10.5281/zenodo.14900193](https://doi.org/10.5281/zenodo.14900193)
[![CODECHECK logo](codecheck_logo.svg)](https://codecheck.org.uk)



## Table 1: CODECHECK summary





Item | Value
:--- | :----
Title | *FIXME add title*
Author(s) | TODO (ORCID: 0123-4567-8910-1112)
Reference | [https://doi.org/10.1234/example](https://doi.org/10.1234/example)
Repository | [https://github.com/example/repo](https://github.com/example/repo)
Codechecker(s) | FIXME (ORCID: 0123-4567-8910-1112), SOMEONE ELSE (ORCID: 0123-4567-8910-1112)
Date of check | 2023-11-15
Summary | TODO add summary



## Table 2: Summary of output files generated





File | Comment | Size (b)
:--------------------- | :----------------------------------- | -------:
`example_output.txt` | Example output file - replace with actual outputs | 0



## Summary




TODO add summary



## CODECHECKER notes

*TODO*

Here is an example code block using Python.
```python
def fahrenheit_to_celsius(fahrenheit):
  return (fahrenheit - 32) * 5 / 9

print(fahrenheit_to_celsius(77))
```

## Recommendations to the authors

*TODO*

## Manifest files

### CSV files





### Figures





## Acknowledgements

*TODO: acknowledge the authors who helped in reproducing the results and figures of the paper.*




CODECHECK is financially supported by the Mozilla foundation.



## Citing this document




FIXME, SOMEONE ELSE (2023). CODECHECK Certificate 2025-023. Zenodo. [https://doi.org/10.5281/zenodo.14900193](https://doi.org/10.5281/zenodo.14900193)



## About CODECHECK





This certificate confirms that the codechecker could independently reproduce the results of a computational analysis given the data and code from a third party. A CODECHECK does not check whether the original computation analysis is correct. However, as all materials required for the reproduction are freely availableby following the links in this document, the reader can then study for themselves the code and data.



## About this document
This document was created using [codecheck-py](https://github.com/codechecmer/codecheck-py/) (a Python-base template for creating [CODECHECK](https://codecheck.org.uk/) certificates). The CODECHECK details are filled into a [jupyter notebook](https://jupyter.org/) which is then converted into Markdown via [nbconvert](https://nbconvert.readthedocs.io/). Afterwards it gets converted into [Typst](https://typst.app/) using [cmarker](https://typst.app/universe/package/cmarker/) and then into PDF using Typst. `sh notebook_to_pdf.sh` will regenerate the report file.

```python
import session_info2 as si
si.session_info(os=True, cpu=True, gpu=True, dependencies=True)
```




```bash
six	1.17.0
idna	3.11
numpy	2.3.5
platformdirs	4.5.1
pure_eval	0.2.3
jedi	0.19.2
decorator	5.2.1
pandas	3.0.0
prompt_toolkit	3.0.52
traitlets	5.14.3
comm	0.2.3
Brotli	1.2.0
PySocks	1.7.1
ipykernel	7.1.0
PyYAML	6.0.3
setuptools	80.9.0
Pygments	2.19.2
tornado	6.5.3
pyzmq	27.1.0
psutil	7.1.3
stack_data	0.6.3
requests	2.32.5
pytz	2025.2
jupyter_core	5.9.1
charset-normalizer	3.4.4
parso	0.8.5
session-info2	0.3
ipython	9.8.0
packaging	25.0
urllib3	2.6.1
colorama	0.4.6
executing	2.2.1
debugpy	1.8.17
jupyter_client	8.7.0
asttokens	3.0.1
wcwidth	0.2.14
python-dateutil	2.9.0.post0
certifi	2026.1.4 (2026.01.04)
----	----
Python	3.14.2 | packaged by conda-forge | (main, Dec  6 2025, 11:21:58) [GCC 14.3.0]
OS	Linux-6.6.87.2-microsoft-standard-WSL2-x86_64-with-glibc2.35
CPU	16 logical CPU cores, x86_64
GPU	No GPU found
Updated	2026-01-27 12:25
```




## License
The code, data, and figures created by the original authors are licensed under the ... license (see their [LICENSE file](https://github.com/codecheckers/causality-review/blob/main/LICENSE)). The content of the `codecheck` directory and this report are licensed under the ... license.
