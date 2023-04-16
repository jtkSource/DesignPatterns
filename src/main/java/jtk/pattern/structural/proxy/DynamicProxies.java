package jtk.pattern.structural.proxy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;

public class DynamicProxies {
    private static final Logger log = LoggerFactory.getLogger(DynamicProxies.class);

    public static class MethodTimerProxy implements InvocationHandler {

        private Object targetObject;
        private Map<String, Method> methods = new HashMap<>();
        public MethodTimerProxy(Object targetObject){
            this.targetObject = targetObject;
            for (Method method: targetObject.getClass().getDeclaredMethods()) {
                this.methods.put(method.getName(), method);
            }
        }
        @Override
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
            long start = System.nanoTime();
            Object result = methods.get(method.getName()).invoke(targetObject, args);
            long elapsed = System.nanoTime() - start;
            log.info("Executing {} finished in {}ns", method.getName(), elapsed);
            return result;
        }
    }
    private static int mapValue(Method method, Object[] methodArgs) {
        String arg1 = (String) methodArgs[0];
        String methodName = method.getName();

        switch (methodName){
            case "get" -> {
                if (arg1.equals("something")) {
                    return 42;
                } else if (arg1.equals("that")) {
                    return 43;
                }else
                    throw new UnsupportedOperationException("Unsupported method"+ methodName);
            }
            default  -> throw new UnsupportedOperationException("Unsupported method"+ methodName);
        }
    }

    public static void main(String[] args) {
        Map proxyInstance = (Map) Proxy.newProxyInstance(DynamicProxies.class.getClassLoader(),
                new Class[]{ Map.class},
                (proxy, method, methodArgs) -> mapValue(method, methodArgs));

        log.info("Get proxy value {}", proxyInstance.get("something"));
        log.info("Get proxy value {}", proxyInstance.get("that"));

        log.info("---------------------------------------------------------");

        Map newMap = (Map) Proxy.newProxyInstance(DynamicProxies.class.getClassLoader(),
                new Class[]{Map.class},
                new MethodTimerProxy(new HashMap<>()));
        newMap.put("Hello", "World");
        log.info("map size {}", newMap.size());
    }

}
