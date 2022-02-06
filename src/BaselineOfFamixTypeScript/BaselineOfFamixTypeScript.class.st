Class {
	#name : #BaselineOfFamixTypeScript,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixTypeScript
}

{ #category : #baselines }
BaselineOfFamixTypeScript >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfFamixTypeScript >> defineDependencies: spec [ 
]

{ #category : #baselines }
BaselineOfFamixTypeScript >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfFamixTypeScript >> definePackages: spec [
	spec package: 'Famix-TypeScript-Generator'; package: 'Famix-TypeScript-Entities'; package: 'Famix-TypeScript-Tests'
]
