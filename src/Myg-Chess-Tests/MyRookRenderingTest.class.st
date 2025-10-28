Class {
	#name : 'MyRookRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyRookRenderingTest >> testMyRookRendering [ [ 
	
	| whiteRook blackRook whiteRookSquare blackRookSquare |
	
	whiteRook := MyWhiteRook new.
	blackRook := MyBlackRook new.
	
	whiteRookSquare := MyChessWhiteSquare new .
	blackRookSquare := MyChessBlackSquare new.
	
	self assert: (blackRook renderPieceOn: whiteRookSquare ) equals: 'T'.
	self assert: (blackRook renderPieceOn: blackRookSquare ) equals: 't'.
	self assert: (whiteRook renderPieceOn: whiteRookSquare ) equals: 'R'.
	self assert: (whiteRook renderPieceOn: blackRookSquare ) equals: 'r'.
	
	
	  ]
]
