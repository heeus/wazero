// https://mbebenita.github.io/WasmExplorer/

extern "C" void callback();

extern "C" void callbackp(int i, int j, int k);
extern "C" void callbackp1(int i);

extern "C" void doCallback(){
  callback();
}

extern "C" void doCallbackp(int i, int j){
  callbackp(i+10, j+10, j+11);
}

extern "C" void doCallbackp1(int i, int j){
  callbackp1(i+j);
}

extern "C" void justCall(){
}

extern "C" void justCallParam(int i){
}

extern "C" void justCallParam2(int i, int j){
}

