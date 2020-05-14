Class {
	#name : #Topics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
Topics >> retrieveQuestions: anUser [
	^ self getQuestions: anUser
]
