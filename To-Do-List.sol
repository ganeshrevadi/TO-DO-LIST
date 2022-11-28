pragma solidity 0.5.1;

contract ToDoList{
   
    struct ToDo{
        string text;
        bool completed;
        }
        
        
    ToDo[] public todos;
      function create(string calldata _text) external {
         todos.push(ToDo({
             text: _text,
             completed: false
         }));
     }
     
     
     function updateText(uint _index , string calldata _text) external {
        todos[_index].text = _text;
        todos[_index].text = _text;
        todos[_index].text = _text;
        todos[_index].text = _text;
        
        ToDo storage todo = todos[_index];
        todo.text= _text;
        todo.text= _text;
        todo.text= _text;
        todo.text= _text;
        }
        
        
    function get(uint _index) external view returns (string memory, bool){
        ToDo storage todo = todos[_index];
        return (todo.text,todo.completed);
    }   
    
    function toggleCompleted(uint _index) external {
        ToDo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}
