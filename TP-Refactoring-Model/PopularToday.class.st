Class {
	#name : #PopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
PopularToday >> retrieveQuestions: anUser [
|popularTCol averageVotes temp|
			popularTCol := cuoora questions select:[:q | (q timestamp asDate = Date today)].
			averageVotes := (cuoora questions sum: [:q | q positiveVotes size ]) / popularTCol size.
			temp := self getCollectionSortedByVotes: (popularTCol select:[:q | q positiveVotes size >= averageVotes ]).
			^ self getLast100: temp byUser: anUser
]
