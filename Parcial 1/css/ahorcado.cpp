#include <iostream>

using namespace std;

int main() {
    cout<<"Bienvenido a ahorcados"<<endl;
    char palabra[5] = {'m','a','n','t','a'};
    char conjunto[5] = {'_', '_', '_', '_', '_'};
    char letra;
    bool escribir, terminar;
    
    int j = 0;
    do{
        cout<<"Aun te quedan "<<5-j<<" intentos, digite la letra: "<<endl;
        cin>>letra;
        escribir = false;
        for(int i = 0; i < 5; i++){
            if(palabra[i] == letra){
                conjunto[i] = letra;
                escribir = true;
            }
        }
        if(escribir){
            cout<<"Acertaste con la letra '"<<letra<<"': "<<conjunto<<endl;
        } else {
            j++;
            cout<<"Fallaste con la letra '"<<letra<<"'"<<endl;
        }
        
        terminar = true;
        
        for(int i = 0; i < 5; i++){
            if(conjunto[i] == '_'){
                terminar = false;
            }
        }
        
        if(terminar){
            cout<<"Felicidades completaste la palabra en: "<<j<<" intentos"<<endl;
        }
        cout<<endl;
    } while(j < 5 && !terminar);
    
    
    return 0;
}
