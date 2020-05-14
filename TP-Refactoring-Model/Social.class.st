Class {
	#name : #Social,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Social >> retrieveQuestions: anUser [ 
	| followingCol temp |
	followingCol := OrderedCollection new.
	anUser following
		do: [ :follow | followingCol addAll: follow questions ].
	temp := self getCollectionSortedByVotes: followingCol.
	^ self getLast100: temp byUser: anUser
]
