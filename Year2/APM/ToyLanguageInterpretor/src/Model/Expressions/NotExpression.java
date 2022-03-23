package Model.Expressions;

import Collection.Dictionary.MyDictionaryInterface;
import Collection.Heap.HeapInterface;
import Model.Exception.MyException.MyException;
import Model.Types.Type;
import Model.Values.BoolValue;
import Model.Values.Value;

public class NotExpression implements Expression{
    private Expression exp;

    public NotExpression(Expression e){exp=e;}

    @Override
    public Value eval(MyDictionaryInterface<String, Value> table, HeapInterface<Value> heap) throws MyException {
        BoolValue b=(BoolValue)exp.eval(table, heap);
        return !b.getValue() ? new BoolValue(true) : new BoolValue(false);
    }

    @Override
    public Type typecheck(MyDictionaryInterface<String, Type> typeEnv) throws MyException {
        return exp.typecheck(typeEnv);
    }

    @Override
    public String toString() {
        return "!("+exp.toString()+")";
    }

}
