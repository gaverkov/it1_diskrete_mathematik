- [Tafelbilder Woche 9, Vorlesung 1 (unvollständig)](it1_wise_25_26_woche_09_1.pdf)
- [Tafelbilder Woche 9, Vorlesung 2](it1_wise_25_26_woche_09_2.pdf)

Die maximale und die minimale Zahl bei ganzzahligen Datentypen mit fester Bit-Größe: 
```cpp
#include <iostream>
#include <stdint.h>
#include <limits> 

using namespace std;

int main()
{
    cout<<"Mit Vorzeichen"<<endl;
    cout<<int(numeric_limits<int8_t>::min())<<endl;
    cout<<int(numeric_limits<int8_t>::max())<<endl;
    cout<<"Ohne Vorzeichen"<<endl;
    cout<<int(numeric_limits<uint8_t>::min())<<endl;
    cout<<int(numeric_limits<uint8_t>::max())<<endl;
    return 0;
}
```

Der C++ Code ist auf [OnlineGDB](https://www.onlinegdb.com/online_c++_compiler#) ausführbar. 

