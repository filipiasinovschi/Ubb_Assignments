package Model.Statement;

import Collection.Dictionary.MyDictionaryInterface;
import Model.Exception.MyException.MyException;
import Model.Expressions.Expression;
import Model.Expressions.NotExpression;
import Model.ProgramState;
import Model.Types.BoolType;
import Model.Types.Type;

public class RepeatStatement implements StatementInterface {
    private StatementInterface stmt1;
    private Expression exp2;

    public RepeatStatement(StatementInterface s, Expression exp) {
        stmt1 = s;
        exp2 = exp;
    }


    @Override
    public ProgramState execute(ProgramState state) throws MyException {
        StatementInterface newRepeat = new CompStatement(stmt1, new WhileStatement(new NotExpression(exp2), stmt1));
        state.getExeStack().push(newRepeat);
        return null;
    }

    @Override
    public String toString() {
        return "repeat " + stmt1.toString() + " until " + exp2.toString();

    }

    //The typecheck method of repeat statement verifies if exp2 has the type bool and also typecheck the statement stmt1.
    @Override
    public MyDictionaryInterface<String, Type> typeCheck(MyDictionaryInterface<String, Type> typeEnv) throws MyException {
        Type typexp = exp2.typecheck(typeEnv);
        if (typexp.equals(new BoolType())) {
            stmt1.typeCheck(typeEnv.cloneDict());
            return typeEnv;
        } else
            throw new MyException("Expression must be bool");
    }
}
