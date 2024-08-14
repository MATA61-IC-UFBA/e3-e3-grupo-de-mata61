/* token.h */

typedef enum {
        ID = 256, 
	NUM, 

        ARRAY, 
        BOOLEAN, 
        CHARLIT, 
        ELSE, 
        FALSE, 
        FOR, 
        FUNCTION, 
        IF, 
        INTEGER, 
        PRINT, 
        RETURN, 
        STRING, 
        TRUE, 
        VOID, 
        WHILE, 

        LEQ, 
        GEQ, 
        EQ, 
        NE, 
        AND, 
        OR, 

        CHAR, 
	STR, 
	ERROR 
} token_t; 

