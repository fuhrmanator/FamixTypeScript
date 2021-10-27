"
I allow an entity to be an interface abstraction
ex:

```java
public interface Flyable {
    public void fly();
}
```
"
Trait {
	#name : #FamixTypeScriptTCanBeInterface,
	#instVars : [
		'#isInterface => FMProperty'
	],
	#category : #'Famix-TypeScript-Entities-Traits'
}

{ #category : #meta }
FamixTypeScriptTCanBeInterface classSide >> annotation [

	<FMClass: #TCanBeInterface super: #Object>
	<package: #FamixTypeScript>
	<generated>
	^self
]

{ #category : #accessing }
FamixTypeScriptTCanBeInterface >> isInterface [

	<FMProperty: #isInterface type: #Boolean>
	<generated>
	<FMComment: 'Entity can be an abstraction representing an implementationless interface (language dependent)'>
	^ isInterface
]

{ #category : #accessing }
FamixTypeScriptTCanBeInterface >> isInterface: anObject [
	<generated>
	isInterface := anObject
]
