Command line
========================

    A program which handles the interface is called a command language interpreter(CLI) or shell.

Git
========================

    A Git egy nyílt forráskódú, elosztott verziókezelő szoftver, vagy másképpen egy szoftverforráskód-kezelő rendszer,
    amely a sebességre helyezi a hangsúlyt. A Gitet eredetileg Linus Torvalds fejlesztette ki a Linux kernel fejlesztéséhez.
    Minden Git munkamásolat egy teljes értékű repository teljes verziótörténettel és teljes revíziókövetési lehetőséggel,
    amely nem függ a hálózat elérésétől vagy központi szervertől.

Coding style guides
========================

    Every major open-source project has its own style guide: a set of conventions (sometimes arbitrary) about how to write code for that project.
    It is much easier to understand a large codebase when all the code in it is in a consistent style.
    Variable namings, tabs vs spaces, no global variables etc.
    Linting.

Basic elements of programming
========================

    1. Input/Output
    2. Conditionals
    3. Variables
    4. Loops
    5. Subroutines and functions

Basic Concepts of Object Oriented Programming
========================

    1. Class  -
    The class is a model or blueprint or prototype of an object that defines or specifies all the properties of the objects.

    2. Object  -
    An object is an entity or instance of a class. The objects are mostly the physical entity but it can be a logical entity as well.
    Each object has state and behaviours.

    3. Abstraction  -
    Abstraction means hiding the implementation and showing only functionality to the user, where the user can interact with the provided
    interface, but the rest is hidden.

    4. Encapsulation  -
    Encapsulation is the process of binding the data by making it private and functions to process that data into a single unit.
    Encapsulation provides security to the data.

    5. Inheritance  -
    Inheritance is the process of acquiring or sharing the properties and behaviours of the base class into the sub class to achieve reusability.

    6. Polymorphism  -
    Polymorphism mean same name having different functionality.

    7. Data Hiding  -
    Data hiding is the process of making the data members private so those will not be visible to other classes.
    The data of a object is not accessible to another objects, because each object has independent copy of the instance variables.

Determine the output of code snippets
========================

Explain their own code (After previously sent individual assessment)
========================

Unit tests for functions and methods
========================

Basic understanding of a chosen build system
========================

    Maven - A build automation tool
    A build tool is a tool that automates everything related to building the software project. Building a software project
    typically includes one or more of these activities:
        - Generating source code (if auto-generated code is used in the project).
        - Generating documentation from the source code.
        - Compiling source code.
        - Packaging compiled code into JAR files or ZIP files.
        - Installing the packaged code on a server, in a repository or somewhere else.
        Any given software project may have more activities than these needed to build the finished software.
        Such activities can normally be plugged into a build tool, so these activities can be automated too.
        The advantage of automating the build process is that you minimize the risk of humans making errors while building the
        software manually. Additionally, an automated build tool is typically faster than a human performing the same steps manually.

    Core Concepts of Maven:
    -----------------------
    1. POM Files: Project Object Model(POM) files are XML file that contains information related to the project and configuration
    information such as dependencies, source directory, plugin, goals etc. used by Maven to build the project.
    When you should execute a maven command you give maven a POM file to execute the commands. Maven reads pom.xml file
    to accomplish its configuration and operations.

    2. Dependencies and Repositories: Dependencies are external Java libraries required for Project and repositories are directories
    of packaged JAR files. The local repository is just a directory on your machine hard drive. If the dependencies are not found
    in the local Maven repository, Maven downloads them from a central Maven repository and puts them in your local repository.
    Built-in dependency management.

    3. Build Life Cycles, Phases and Goals: A build life cycle consists of a sequence of build phases, and each build phase consists
    of a sequence of goals. Maven command is the name of a build lifecycle, phase or goal. If a lifecycle is requested executed by
    giving maven command, all build phases in that life cycle are executed also. If a build phase is requested executed, all build
    phases before it in the defined sequence are executed too.

    4. Build Profiles: Build profiles a set of configuration values which allows you to build your project using different configurations.
    For example, you may need to build your project for your local computer, for development and test. To enable different builds
    you can add different build profiles to your POM files using its profiles elements and are triggered in the variety of ways.

    5. Build Plugins: Build plugins are used to perform specific goal. you can add a plugin to the POM file. Maven has some standard
    plugins you can use, and you can also implement your own in Java.

Libraries as dependencies
========================


Databases
========================

    A database is an organized collection of data, they are often developed using formal design and modeling techniques.
    Formally, a "database" refers to a set of related data and the way it is organized.
    The database management system (DBMS) is the software that interacts with end users, applications, and the database itself.
    Relational databases model data as rows and columns in a series of tables, and the vast majority use SQL for writing and querying data.
    In the 2000s, non-relational databases became popular, referred to as NoSQL because they use different query languages.
    NoSQL databases are often very fast, do not require fixed table schemas, avoid join operations by storing denormalized data,
    and are designed to scale horizontally.

    Classification of databases:
        1. By Content (text, statistical, multimedia etc.)
        2. By Application area (accounting, music, banking etc)
        3. By some Technical aspect (Database structure, interface type etc.)

    This section lists a few of the adjectives used to characterize different kinds of databases.
        In-memory, active, cloud database, data warehouses, deductive, distributed, document-oriented, embedded, end-user,
        graph database, mobile, operational, parallel, real-time, temporal, unstructured-data.

    Some API's aim to be database independent, ODBC being a commonly known example. Other common API's include JDBC and ADO.NET.
    Database languages are specific to a particular data model(SQL, OQL, XQuery etc.).
    The acronym ACID describes some ideal properties of a database transaction: atomicity, consistency, isolation, and durability.

REST services
========================
