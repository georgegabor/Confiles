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

    1. Class:
        The class is a model or blueprint or prototype of an object that defines or specifies all the properties of the objects.

    2. Object:
        An object is an entity or instance of a class. The objects are mostly the physical entity but it can be a logical entity as well.
        Each object has state and behaviours.

    3. Abstraction:
        Abstraction means hiding the implementation and showing only functionality to the user, where the user can interact with the provided
        interface, but the rest is hidden.

    4. Encapsulation:
        Encapsulation in Java is a mechanism of wrapping the data (variables) and code acting on the data (methods) together as a single unit.
        In encapsulation, the variables of a class will be hidden from other classes, and can be accessed only through the methods of their current class.
        Therefore, it is also known as data hiding.
        To achieve encapsulation in Java declare the variables of a class as private and
        provide public setter and getter methods to modify and view the variables values.


    5. Inheritance:
        Inheritance is the process of acquiring or sharing the properties and behaviours of the base class into the sub class to achieve reusability.

    6. Polymorphism:
        Polymorphism mean same name having different functionality.

    7. Data Hiding:
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

    The following principles encourage RESTful applications to be simple, lightweight, and fast:

        1. Resource identification through URI:
        A RESTful web service exposes a set of resources that identify the targets of the interaction with its clients.
        Resources are identified by URIs, which provide a global addressing space for resource and service discovery.
        See The @Path Annotation and URI Path Templates for more information.

        2. Uniform interface:
        Resources are manipulated using a fixed set of four create, read, update, delete operations: PUT, GET, POST, and DELETE.
        PUT creates a new resource, which can be then deleted by using DELETE.
        GET retrieves the current state of a resource in some representation.
        POST transfers a new state onto a resource.

        3.Self-descriptive messages:
        Resources are decoupled from their representation so that their content can be accessed in a variety of formats,
        such as HTML, XML, plain text, PDF, JPEG, JSON, and others.
        Metadata about the resource is available and used, for example, to control caching, detect transmission errors,
        negotiate the appropriate representation format, and perform authentication or access control.

        4.Stateful interactions through hyperlinks:
        Every interaction with a resource is stateless; that is, request messages are self-contained.
        Stateful interactions are based on the concept of explicit state transfer.
        Several techniques exist to exchange state, such as URI rewriting, cookies, and hidden form fields.
        State can be embedded in response messages to point to valid future states of the interaction.


Spring Framework
========================

    Spring is modular, so one can pick the modules which are needed for one's application, and leave out the rests.
    The Spring Framework provides about 20 modules which can be used based on an application requirement.
    The container gets its instructions on what objects to instantiate, configure, and assemble by reading the configuration metadata provided.
    The configuration metadata can be represented either by XML, Java annotations, or Java code.
    Spring provides the following two distinct types of containers:
        - Spring BeanFactory Container: basic and lightweight.
        - Spring ApplicationContext Container: more enterprise specific

    1. Data Access/Integration:
        - JDBC: DBC-abstraction layer that removes the need for tedious JDBC related coding.
        - ORM: integration layers for popular object-relational mapping APIs, including JPA, JDO, Hibernate, and iBatis.
        - OXM: abstraction layer that supports Object/XML mapping implementations for JAXB, Castor, XMLBeans, JiBX and XStream.
        - JMS(Java Messaging Service): contains features for producing and consuming messages.
        - Transaction: programmatic and declarative transaction management for classes that implement
                        special interfaces and for all your POJOs.

    2. Web(MVC/Remoting):
        - Web: provides basic web-oriented integration features such as multipart file-upload functionality
                and the initialization of the IoC container using servlet listeners and a web-oriented application context.
        - Web-MVC: Spring's Model-View-Controller (MVC) implementation for web applications.
        - Web-Socket: support for WebSocket-based, two-way communication between the client and the server in web applications.
        - Web-Portlet: the MVC implementation to be used in a portlet environment and mirrors the functionality of Web-Servlet module.

    3. Core Container:
        - Beans: provides BeanFactory, which is a sophisticated implementation of the factory pattern.
        - Core: IoC and Dependency Injection features
        - Context: this module builds on the solid base provided by the Core and Beans modules and
                    it is a medium to access any objects defined and configured.
        - RpEl: provides a powerful expression language for querying and manipulating an object graph at runtime.

    5. Miscellaneous:
        - AOP: provides an aspect-oriented programming implementation allowing you to define method-interceptors and pointcuts
                to cleanly decouple code that implements functionality that should be separated.
        - Aspects: provides integration with AspectJ, which is again a powerful and mature AOP framework.
        - Instrumentation: provides class instrumentation support and class loader implementations to be used in certain application servers.
        - Messaging: provides support for STOMP as the WebSocket sub-protocol to use in applications. It also supports an
                        annotation programming model for routing and processing STOMP messages from WebSocket clients.
        - Test: supports the testing of Spring components with JUnit or TestNG frameworks.

Java
========================

    Reference types: - Classes
                     - Arrays
                     - Interfaces
                     - Generics
                     - Enums and Annotations
                     - Lambda expressions and nested types
                     - Non-denotable types
