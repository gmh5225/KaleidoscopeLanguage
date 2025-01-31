
#ifndef KALE_PARSER_H
#define KALE_PARSER_H

#include <unordered_map>
#include <unordered_set>
#include "token.h"
#include "ast.h"

namespace kale {

/// -----------------------------------------------------
/// @brief Token parser class, this class defined to parse
/// sources file stream to Token. One TokenParser can deal
/// one sources file,  This object-oriented design, with 
/// fewer definitions of global variables, is designed to 
/// accommodate multithreaded compilation
/// -----------------------------------------------------
class TokenParser {
private:
    LineNo LineInfo;    
    double DoubleNumVal;
    long long IntNumVal;
    std::string LiteralVal;
    std::string IdStr;
    int LastChar;
    bool IsSigned;
private:
    FILE *Handle;
public:
    Token getToken();
    void getChar();
public:
    explicit TokenParser(unsigned fileIndex);
    bool openSuccess();

    LineNo getCurLineNo() const { return LineInfo; }
    double getDoubleVal() const { return DoubleNumVal; }
    long long getIntVal()    const { return IntNumVal; }
    const std::string& getIdStr() const { return IdStr; }
    const std::string& getLiteral() const { return LiteralVal; }
    bool   isSigned() { return IsSigned; }
    std::vector<Token> lookUp(unsigned i);
};
/// -----------------------------------------------------


/// -----------------------------------------------------
/// @brief 
/// -----------------------------------------------------
class GrammarParser {
private:
    ProgramAST *ProgAst;
    TokenParser *TkParser;
    Token CurTok;
public:
    explicit GrammarParser(ProgramAST *prog);
    void generateSrcToAst();
private:
    void getNextToken();
    void parseProgram();
    DataTypeAST *parseTypeDecl();
    DataDeclAST *parseVarExtern();
    FuncAST *parseFuncExtern();
    DataDeclAST *parseVarDef();
    ExprAST *parseInitExpr();
    FuncAST *parseFuncDef();
    ASTBase *parseImportDecl();
    ASTBase *parseParamList();
    ParamAST *parseParamDecl();
    StatementAST *parseStmt();
    BlockStmtAST *parseBlockStmt();
    IfStmtAST *parseIfStmt();
    ExprStmtAST *parseExprStmt();
    ForStmtAST *parseForStmt();
    WhileStmtAST *parseWhileStmt();
    ReturnStmtAST *parseReturnStmt();
    BreakStmtAST *parseBreakStmt();
    ContinueStmtAST *parseContinueStmt();
    StatementAST *parseSwitchStmt();
    StatementAST *parseCaseStmt();
    StatementAST *parseDefault();
    ExprAST *parseExpr();
    ExprAST *parseAssignExpr();
    ExprAST *parseLogicExpr();
    ExprAST *parseBitExpr();
    ExprAST *parseCmpExpr();
    ExprAST *parseBitMoveExpr();
    ExprAST *parseAddExpr();
    ExprAST *parseMulExpr();
    ExprAST *parseUnaryExpr();
    ExprAST *parsePrimaryExpr();
    ExprAST *parseIdRef();
    ExprAST *parseCallExpr();
    ExprAST *parseConstExpr();

public:
    /* Get function def ast , if not have define or extern, will return nullptr */
    FuncAST *getFuncASTNode(const std::string & name);
    /* Get variable def ast , if not have define or extern, will return nullptr */
    VariableAST *getVariableNode(const std::string& name);
    VariableAST *getVariableNodeFromGlobalMap(const std::string& name);
    VariableAST *getVariableNodeFromOtherGlobalMap(const std::string& name);
    /* Insert function define to this map, if already define this func, it will return false */
    bool insertFunctionToFuncMap(FuncAST *node);
    /* Insert variable define to this map, if already define this func, it will return false */
    bool insertVariableToVarMap(VariableAST *var);
public:
    ProgramAST *getProg() { return ProgAst; }

private:
    void enterNewSymTab();
    void leaveCurSymTab();

private:
    bool IsFuncScope = false;
    std::vector<ASTBase *> NodeStack;
    std::unordered_map<std::string, FuncAST *> FuncDefMap;
    std::unordered_map<std::string, VariableAST *> GlobalVariableMap;
    std::vector<std::unordered_map<std::string, VariableAST *>> SymTabMap;
private:
    static std::unordered_map<ProgramAST *, GrammarParser *> ProgToGrammarParserMap;

public:
    static GrammarParser *getOrCreateGrammarParserByProg(ProgramAST *prog);
};
/// -----------------------------------------------------

}

#endif
