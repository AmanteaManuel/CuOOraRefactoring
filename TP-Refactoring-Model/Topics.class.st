Class {
	#name : #Topics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Topics >> retrieveQuestions: anUser [
	| topicsCol temp |
	topicsCol := OrderedCollection new.
	anUser topics
		do: [ :topic | topicsCol addAll: topic questions ].
	temp := self getCollectionSortedByVotes: topicsCol.
	^ self getLast100: temp byUser: anUser
]
