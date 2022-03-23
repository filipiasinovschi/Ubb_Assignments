package Collection.Dictionary;

import Model.Exception.MyException.MyException;

import java.security.Key;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public interface MyDictionaryInterface<Key,Value> {

    Value get(Key key);

    void add(Key k,Value v);
    //TODO: UPDATE
    int size();

    void setDict(HashMap<Key,Value> k)  throws MyException;

    void remove(Key k);

    boolean containsKey(Key key);

    Collection<Value> values();

    boolean containsValue(Value val);

    Set<Key> keySet();

    MyDictionaryInterface<Key,Value> cloneDict()  throws MyException;
    Map<Key,Value> getContent();
    void update(Key k,Value v);
}
