Class {
	#name : 'MyQueenRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenRenderingTest >> testMyQueenRendering [ [ 
	
	| whiteQueen blackQueen whiteQueenSquare blackQueenSquare |
	
	whiteQueen := MyWhiteQueen new.
	blackQueen := MyBlackQueen new.
	
	whiteQueenSquare := MyChessWhiteSquare new .
	blackQueenSquare := MyChessBlackSquare new.
	
	self assert: (blackQueen renderPieceOn: whiteQueenSquare ) equals: 'W'.
	self assert: (blackQueen renderPieceOn: blackQueenSquare ) equals: 'w'.
	self assert: (whiteQueen renderPieceOn: whiteQueenSquare ) equals: 'Q'.
	self assert: (whiteQueen renderPieceOn: blackQueenSquare ) equals: 'q'.
	
	
	  ]
]
