contract Hello_World {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }

    event display_new_name (string);

    function display_owner () public view returns (string memory) {
        return name;
    }

    function change_owner (string memory _name ) public returns (string memory) {
        name = _name;
        emit display_new_name("Name changed successfully");
        return name;
    }
}
