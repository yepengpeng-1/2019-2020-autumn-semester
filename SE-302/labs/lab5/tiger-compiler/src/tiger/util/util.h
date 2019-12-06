#ifndef TIGER_UTIL_UTIL_H_
#define TIGER_UTIL_UTIL_H_

namespace U {

class BoolList {
public:
    bool        head;
    std::string symbol;
    BoolList*   tail;

    BoolList( bool head, std::string symbol, BoolList* tail ) : head( head ), tail( tail ), symbol( symbol ) {}
};

}  // namespace U

#endif  // TIGER_UTIL_UTIL_H_