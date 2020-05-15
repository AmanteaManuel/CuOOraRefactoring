Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora;  yourself.
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #methods }
QuestionRetriever >> getCollectionSortedByVotes: aCollection [
	^ aCollection
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #methods }
QuestionRetriever >> getLast100: aCollection byUser: anUser [
	^ (aCollection last: (100 min: aCollection size))
		reject: [ :q | q user = anUser ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility.
]
