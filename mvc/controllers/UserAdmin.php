<?php
require_once "mvc/utility/utility.php";
class UserAdmin extends Controller{

    public $userModel;

    public function __construct() {
        $this->userModel = $this->model("UserAdminModel");
    }

    public function SayHi(){
        $allUser = $this->userModel->getAllUser();
        $this->view("user/userAdmin",[
            "allUser"=> $allUser
        ]);
    }

    public function deletedUser($id){
        $this->userModel->deletedUser($id);
        header('Location: http://localhost/Laptrinhweb/UserAdmin');
    }

    public function viewUpdateUser($id){
        $userItem = $this->userModel->selectUser($id);
        $role = $this->userModel->getRole();
        $this->view("user/updateUser",[
            "userItem"=>$userItem,
            "role"=>$role
        ]);
    }

    public function updateUser(){
        if(isset($_POST)){
            $id = getPost('id');
            $fullname = getPost('fullname');
            $email = getPost('email');
            $phone_number = getPost('phone_number');
            $address = getPost('address');
            $password = getPost('password');
            $location = getPost('updateInfoUser');
            if(isset($_POST["role_id"])){
                $role_id = getPost('role_id');
            }
            else $role_id = 1;
            $result = $this->userModel->updateuser($id, $fullname, $email, $role_id, $phone_number, $address, $password);
            if($location == 1){
                header('Location: http://localhost/Laptrinhweb/Home/quanlytaikhoan'); 
            }
            else header('Location: http://localhost/Laptrinhweb/UserAdmin'); 
        }
    }

    public function viewInsertUser(){
        $userItem = $this->userModel->selectUser($id);
        $role = $this->userModel->getRole();
        $this->view("user/addUser",[
            "userItem"=>$userItem,
            "role"=>$role
        ]);
    }

    public function insertUser(){
        if(isset($_POST)){
            $fullname = getPost('fullname');
            $email = getPost('email');
            $phone_number = getPost('phone_number');
            $address = getPost('address');
            $password = getPost('password');
            $password = getSecurityMD5($password);
            $role_id = getPost('role_id');
            $result = $this->userModel->addUser($fullname, $email, $role_id, $phone_number, $address, $password);
        }
        header('Location: http://localhost/Laptrinhweb/UserAdmin'); 
    }
}

?>