# crafting-a-compiler
This project is focused on building a compiler step by step while learning the theory behind it.
We follow the book *Crafting a Compiler* by Charles N. Fischer, Ron K. Cytron, and Richard J. LeBlanc Jr.

## Chapter Descriptions

### Chapter 1 — Introduction
Overview of the compilation process and the idea of constructing a compiler from modular components. The history of compilers is discussed along with tools for generating compiler components.

### Chapter 2 — A Simple Compiler
Introduces the simple language `ac` and shows how each compiler component translates `ac` to `dc`. Compiler components are presented in pseudocode, with complete code available in the Crafting a Compiler Supplement.

### Chapter 3 — Scanning: Theory and Practice
Presents lexical analysis concepts and techniques. Covers hand-coded scanners and scanner-generation tools for table-driven lexical analyzers.

### Chapter 4 — Grammars and Parsing
Covers formal language concepts including context-free grammars, grammar notation, derivations, and parse trees. Introduces grammar-analysis algorithms used in later parsing chapters.

### Chapter 5 — Top-Down Parsing
Presents top-down parsing techniques, showing how to write parsers explicitly or build a table-driven parsing engine. Includes syntactic error diagnosis, recovery, and repair.

### Chapter 6 — Bottom-Up Parsing
Describes modern bottom-up parsing techniques and parser-generation tools. Discusses conflict resolution, grammar ambiguity, and heuristics for understanding and resolving ambiguous grammars.

### Chapter 7 — Syntax-Directed Translation
Introduces the AST and the interface for constructing, managing, and traversing it. Covers the visitor pattern and the role of syntax-directed translation in later compiler phases.

### Chapter 8 — Symbol Tables and Declaration Processing
Defines the symbol table as an abstract compiler component and explores implementation ideas including nested scopes. Introduces semantic analysis for declarations, types, variables, arrays, structures, enums, and type checking.

### Chapter 9 — Semantic Analysis
Covers semantic checks that go beyond parsing, including control structures like conditionals and loops, as well as exception-related compile-time semantic analysis.

### Chapter 10 — Intermediate Representations
Describes two common intermediate representations: JVM bytecode and SSA form. Provides background for targeting the JVM and introduces SSA Form in preparation for later chapters.

### Chapter 11 — Code Generation for a Virtual Machine
Covers code generation for a virtual machine target, emphasizing the benefits of higher-level VM instructions and runtime support. Recommends studying VM code generation before machine-level code generation.

### Chapter 12 — Runtime Support
Discusses runtime support needed by modern languages and VMs, including static, stack, and heap storage. Covers frames, displays, and the structures needed for nonlocal storage.

### Chapter 13 — Target Code Generation
Presents low-level target code generation, including register allocation, temporary management, code scheduling, instruction selection, and peephole optimization.

### Chapter 14 — Program Optimization
Introduces practical program optimizations, advanced control-flow analysis, data-flow analysis, and the use of SSA form in optimization.
