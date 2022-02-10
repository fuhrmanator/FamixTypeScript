
# FamixNG Metamodel for TypeScript.

This project is normally synchronized with [FamixTypeScriptImporter](https://github.com/Arezoo-Nasr/FamixTypeScriptImporter) as it is the FamixNG metamodel it supports.

## Loading from a playground

This version must be loaded in a [Moose 8.0.2 image](https://github.com/moosetechnology/Moose/releases/download/v8.0.2/Moose8-stable.zip). 

```st
Metacello new
	githubUser: 'Arezoo-Nasr' project: 'FamixTypeScript' commitish: 'master' path: 'src';
	baseline: 'FamixTypeScript';
	load
```

Note to students: If you're working with a fork of this project, you should change the `githubUser` above to match your fork.
