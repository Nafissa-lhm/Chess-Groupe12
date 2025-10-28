Class {
	#name : 'MyBishopRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyBishopRenderingTest >> testMyBishopRendering [ [ 
	
	| whiteBishop blackBishop whiteBishopSquare blackBishopSquare |
	
	whiteBishop := MyWhiteBishop new.
	blackBishop := MyBlackBishop new.
	
	whiteBishopSquare := MyChessWhiteSquare new .
	blackBishopSquare := MyChessBlackSquare new.
	
	self assert: (whiteBishop renderPieceOn: whiteBishopSquare ) equals: 'B'.
	self assert: (whiteBishop renderPieceOn: blackBishopSquare ) equals: 'b'.
	self assert: (blackBishop renderPieceOn: whiteBishopSquare ) equals: 'V'.
	self assert: (blackBishop renderPieceOn: blackBishopSquare ) equals: 'v'.
	
	
	
	  ]
]
