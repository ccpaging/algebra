---
layout: docs
title: Importing properties
prev_section: loading-strategies
next_section: parametrized-properties
permalink: /docs/importing-properties/
---
You can use another mechanism to load your properties into a *mapping interface*.
And this mechanism is to specify a Properties object programmatically when 
calling `ConfigFactory.create()`:

```java
public interface ImportConfig extends Config {

    @DefaultValue("apple")
    String foo();

    @DefaultValue("pear")
    String bar();

    @DefaultValue("orange")
    String baz();

}

// then...

Properties props = new Properties();
props.setProperty("foo", "pineapple");
props.setProperty("bar", "lime");

ImportConfig cfg = ConfigFactory
    .create(ImportConfig.class, props); // props imported!

assertEquals("pineapple", cfg.foo());
assertEquals("lime", cfg.bar());
assertEquals("orange", cfg.baz());
```

You can specify multiple properties to import on the same line:

```java
ImportConfig cfg = ConfigFactory
    .create(ImportConfig.class, props1, props2, ...);
```

If there are prop1 and prop2 defining two different values for the same property
key, the one specified first will prevail:

```java
Properties p1 = new Properties();
p1.setProperty("foo", "pineapple");
p1.setProperty("bar", "lime");

Properties p2 = new Properties();
p2.setProperty("bar", "grapefruit");
p2.setProperty("baz", "blackberry");


ImportConfig cfg = ConfigFactory
    .create(ImportConfig.class, p1, p2); // props imported!

assertEquals("pineapple", cfg.foo());

// p1 prevails, so this is lime and not grapefruit
assertEquals("lime", cfg.bar()); 

assertEquals("blackberry", cfg.baz());
```

This is pretty handy if you want to reference system properties or environment 
variables:

```java
interface SystemEnvProperties extends Config {
    @Key("file.separator")
    String fileSeparator();

    @Key("java.home")
    String javaHome();

    @Key("HOME")
    String home();

    @Key("USER")
    String user();

    void list(PrintStream out);
}

SystemEnvProperties cfg = ConfigFactory
    .create(SystemEnvProperties.class, 
            System.getProperties(), 
            System.getenv());
            
assertEquals(File.separator, cfg.fileSeparator());
assertEquals(System.getProperty("java.home"), cfg.javaHome());
assertEquals(System.getenv().get("HOME"), cfg.home());
assertEquals(System.getenv().get("USER"), cfg.user());
```


Interactions with loading strategies
------------------------------------

Notice that the "importing properties" feature is additional to the properties 
loading mechanism explained in chapter 
[Loading strategies](/docs/loading-strategies/).

Properties imported programmatically have higher priority regarding the 
properties loaded from the `@Sources` attribute.

Imagine the scenario where the you define your configuration with `@Sources` 
annotation, but you want to allow the user to specify a configuration file at
the command line. 

```java

@Sources(...)
interface MyConfig extends Config { 
    ...
}

public static void main(String[] args) {
    MyConfig cfg;
    if (args.lenght() > 0) {
        Properties props = new Properties();
        props.load(new File(args[0]);
        cfg = ConfigFactory.create(MyConfig.class, userProps);
    } else {
        cfg = ConfigFactory.create(MyConfig.class);
    }
}
```

In the above example, the properties file specified by the user will override 
the properties loaded by `@Sources` if there is overlapping between the 
properties names. 
This approach is used by many command line tools, that allow the user to specify
a configuration on the command line that overrides the default one.

<div class="note warning">
  <h5>This is true only with version 1.0.3.1 and superior!</h5>
  <p>Be aware that in versions prior to 1.0.3.1 imported properties have lower 
  priority than others loaded properties. This behavior has been changed in
  version 1.0.3.1 and it will be kept this way for future releases.</p>
</div>


