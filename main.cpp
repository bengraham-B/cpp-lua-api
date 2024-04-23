#include <iostream>
#include <cstdio>

extern "C" {
    #include <lua.h>
    #include <lualib.h>
    // #include <luaxlib.h>
}
#include <lua.hpp>
// #include <lua.h>
// #include <lualib.h>
// #include <luaxlib.h>

using namespace std;

int main (){
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    string luaScript = "api.lua";

    //Execute the Lua script 
    int result = luaL_dofile(L, luaScript.c_str());

    if(result != LUA_OK){
        cout << "Lua error" << lua_tostring(L, -1) << endl;
    }

    else {
        // Get status from global variable 
        lua_getglobal(L, "status");

        if (lua_isstring(L, -1)){
            string status = lua_tostring(L, -1);
            cout << "Status" << status <<endl;
        }
        
        else {
            cout << "Lua error: 'status' not found" << endl;
        }
    }

    // Close the Lua state 
    lua_close(L);
    return 0;
}
