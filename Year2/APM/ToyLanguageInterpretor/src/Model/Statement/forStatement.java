package Model.Statement;

import Collection.Dictionary.MyDictionaryInterface;
import Collection.Stack.MyStackInterface;
import Model.Exception.MyException.MyException;
import Model.Expressions.Expression;
import Model.ProgramState;
import Model.Statement.StatementInterface;
import Model.Types.IntType;
import Model.Types.Type;

public class forStatement implements StatementInterface {
    private Expression e1;
    private Expression e2;
    private Expression e3;
    private StatementInterface body;
    public forStatement(Expression e1, Expression e2, Expression e3,StatementInterface s){
        this.e1 = e1;
        this.e2 = e2;
        this.e3 = e3;
        this.body = body;
    }

    @Override
    public MyDictionaryInterface<String, Type> typeCheck(MyDictionaryInterface<String, Type> typeEnv) throws MyException{
        return null;
    }

    @Override
    public ProgramState execute(ProgramState state) throws MyException{
        MyStackInterface<StatementInterface>  stack;
        stack = state.getExeStack();
        StatementInterface s = new CompStatement(new VariableDeclStatement("v",new IntType()),new CompStatement(new AssignStatement("v",this.e1),new CompStatement(new WhileStatement(this.e2,this.body),new AssignStatement("v",this.e3))));
        stack.push(s);
        return null;
    }

    @Override
    public String toString(){
        return "for(v= "+this.e1.toString()+";v<"+this.e2.toString()+";v="+this.e3.toString()+")";
    }
}
