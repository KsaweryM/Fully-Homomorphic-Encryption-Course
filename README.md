# Fully Homomorphic Encryption Course

[![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

A practical introduction to **Fully Homomorphic Encryption (FHE)** – from the basic intuition and mathematical foundations all the way to hands-on coding with the OpenFHE library.

Author: **Ksawery Możdżyński**

---

## Course Structure

The course is divided into three parts:

| Part | Title | Topics |
|------|-------|--------|
| **I** | Intuition, Mathematical Essentials & Historical Homomorphism | Motivation (privacy in the cloud), avalanche effect, modular arithmetic, cyclic groups, Discrete Logarithm Problem, ElGamal and its multiplicative homomorphism + Python exercises |
| **II** | The FHE Engine – LWE Problem and the Noise Agony | Limitations of partial homomorphism, vectors & dot product, Learning With Errors (LWE), LWE encryption/decryption, homomorphic addition & multiplication, noise growth |
| **III** | Practical Introduction to OpenFHE (Python) | OpenFHE architecture & `openfhe-python`, FHEW (Boolean logic + fast bootstrapping), BGV (exact integer arithmetic + SIMD), introduction to CKKS (approximate real arithmetic) |

---

## Pre-built PDFs

Ready-to-use presentation slides are available in the [`builded_presentation/`](builded_presentation/) folder:

- [FHE_part_I.pdf](builded_presentation/FHE_part_I.pdf)
- [FHE_part_II.pdf](builded_presentation/FHE_part_II.pdf)
- [FHE_part_III.pdf](builded_presentation/FHE_part_III.pdf)

---

## Building the presentations yourself

Requirements:
- `latexmk`
- A full TeX distribution (TeX Live / MiKTeX) with Beamer and the usual packages (`tikz`, `fontawesome5`, `listings`, etc.)

```bash
# Build everything
make

# Build a single part
make FHE_part_II

# Clean auxiliary files and PDFs
make clean
```

The Makefile automatically places the resulting PDFs in `builded_presentation/`.

---

## Who is this for?

- Students and engineers who want a **solid, intuition-first** introduction to FHE
- People who already know some cryptography and want to understand the LWE foundation
- Anyone who wants to start coding real FHE applications with OpenFHE in Python

No deep lattice cryptography background is assumed – the course builds the necessary intuition step by step.

---

## License

© Ksawery Możdżyński. The slides, their LaTeX sources and the PDFs in this repository are licensed under the
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

You are free to use, share and adapt the material for any purpose, including teaching and commercial use,
as long as you give appropriate credit, provide a link to the license and indicate if changes were made.
A suggested attribution:

> "Fully Homomorphic Encryption Course" by Ksawery Możdżyński,
> https://github.com/KsaweryM/Fully-Homomorphic-Encryption-Course, licensed under CC BY 4.0.

If you find the course useful, a star ⭐ is always appreciated!
