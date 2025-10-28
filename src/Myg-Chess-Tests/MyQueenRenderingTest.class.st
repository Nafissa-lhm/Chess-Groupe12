Class {
	#name : 'MyQueenRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenRenderingTest >> testMyQueenRendering [ [ 
	
	| whiteQueen blackQueen whiteSquare blackSquare |
	
	whiteQueen := MyWhiteQueen new.
	blackQueen := MyBlackQueen new.
	
	whiteSquare := MyChessWhiteSquare new .
	blackSquare := MyChessBlackSquare new.
	
	self assert: (blackQueen renderPieceOn: whiteSquare) equals: 'W'.
	self assert: (blackQueen renderPieceOn: blackSquare ) equals: 'w'.
	self assert: (whiteQueen renderPieceOn: whiteSquare ) equals: 'Q'.
	self assert: (whiteQueen renderPieceOn: blackSquare ) equals: 'q'.
	
	
	  ]
]
