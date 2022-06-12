
# FamixNG Metamodel for TypeScript.

This project is normally synchronized with [FamixTypeScriptImporter](https://github.com/Arezoo-Nasr/FamixTypeScriptImporter) as it is the FamixNG metamodel it supports.

## Loading from a playground

This version works in Moose 10. 

```st
Metacello new
	githubUser: 'Arezoo-Nasr' project: 'FamixTypeScript' commitish: 'master' path: 'src';
	baseline: 'FamixTypeScript';
	load
```

Note to students: If you're working with a fork of this project, you should change the `githubUser` above to match your fork.

## Loading a FamixTypeScript model (from importer)

Assuming the model is in `entity.json` and you've cloned your repos in the same `GitHub` tree:

```st
'../../../GitHub/FamixTypeScriptImporter/entity.json' asFileReference 
	readStreamDo: [ :stream | model := FamixTypeScriptModel new
	importFromJSONStream: stream. model install ]. 
```
