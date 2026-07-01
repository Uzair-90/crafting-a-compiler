# Crafting a Compiler

A structured, hands-on journey through compiler construction — grounded in theory, built in practice.

This project is based on **_Crafting a Compiler_** by Charles N. Fischer, Ron K. Cytron, and Richard J. LeBlanc Jr. The approach is split into two phases:

1. **Theory** work through the book chapter by chapter to build a solid conceptual foundation.
2. **Practice** apply that foundation to design and implement our own toy compiler from scratch.

---

## Table of Contents

- [Part I — Foundations](#part-i--foundations)
- [Part II — Parsing](#part-ii--parsing)
- [Part III — Semantic Analysis](#part-iii--semantic-analysis)
- [Part IV — Code Generation & Optimization](#part-iv--code-generation--optimization)

---

## Part I — Foundations

| Chapter | Title | Summary |
|:---:|---|---|
| 1 | **Introduction** | Overview of the compilation process and the concept of building a compiler from modular components. Covers the history of compilers and tools for generating compiler components. |
| 2 | **A Simple Compiler** | Introduces the language `ac` and traces how each compiler component translates it to `dc`. Presented in pseudocode, with full implementations in the Crafting a Compiler Supplement. |
| 3 | **Scanning: Theory and Practice** | Lexical analysis concepts and techniques, covering both hand-coded scanners and scanner-generation tools for table-driven lexical analyzers. |

## Part II — Parsing

| Chapter | Title | Summary |
|:---:|---|---|
| 4 | **Grammars and Parsing** | Formal language concepts — context-free grammars, grammar notation, derivations, and parse trees — plus grammar-analysis algorithms used in later chapters. |
| 5 | **Top-Down Parsing** | Techniques for hand-written and table-driven top-down parsers, including syntactic error diagnosis, recovery, and repair. |
| 6 | **Bottom-Up Parsing** | Modern bottom-up parsing techniques and parser-generation tools, with a focus on conflict resolution and resolving grammar ambiguity. |
| 7 | **Syntax-Directed Translation** | Introduces the AST, its construction and traversal interface, the visitor pattern, and the role of syntax-directed translation in later phases. |

## Part III — Semantic Analysis

| Chapter | Title | Summary |
|:---:|---|---|
| 8 | **Symbol Tables and Declaration Processing** | The symbol table as an abstract component, including nested scopes, along with semantic analysis for declarations, types, arrays, structures, and enums. |
| 9 | **Semantic Analysis** | Semantic checks beyond parsing — control structures such as conditionals and loops, and compile-time analysis related to exceptions. |
| 10 | **Intermediate Representations** | Two common IRs: JVM bytecode and SSA form. Groundwork for targeting the JVM and for later use of SSA in optimization. |

## Part IV — Code Generation & Optimization

| Chapter | Title | Summary |
|:---:|---|---|
| 11 | **Code Generation for a Virtual Machine** | Code generation for a VM target, emphasizing higher-level VM instructions and runtime support. Recommended before machine-level code generation. |
| 12 | **Runtime Support** | Runtime support for modern languages and VMs — static, stack, and heap storage — plus frames, displays, and structures for nonlocal storage. |
| 13 | **Target Code Generation** | Low-level code generation: register allocation, temporary management, code scheduling, instruction selection, and peephole optimization. |
| 14 | **Program Optimization** | Practical optimizations, advanced control-flow analysis, data-flow analysis, and the use of SSA form in optimization. |

---

*This roadmap will evolve as the toy compiler takes shape alongside the theory.*
