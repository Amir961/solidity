
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import "/data/todo_struct.sol";


contract StructTodo {

    Todo[] listTodo;


    function addTask(string calldata _text) public {
        listTodo.push(Todo(_text,false));

        listTodo.push(Todo({text:_text, completed:false}));
    }

     function updateText(string calldata _text,uint256 index) public {
        Todo storage _todo=    listTodo[index];
        _todo.text=_text;
       
    }

      function updateComplete(bool  _value,uint256 index) public {
        Todo storage _todo=    listTodo[index];
        _todo.completed=_value;
       
    }

     function get(uint  index) public view returns ( string memory,bool) {
         Todo storage _todo=    listTodo[index];

         return (_todo.text,_todo.completed);

        
    }
     
}