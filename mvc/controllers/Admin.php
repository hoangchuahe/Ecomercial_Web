<?php

class Admin extends Controller{

    public function __construct(){
        $this->orderModel = $this->model("OrderModel");
    }

    function SayHi() {
        $doanhthu = $this->orderModel->getDoanhthu();
        $this->view("admin",[
            "doanhthu"=>$doanhthu
        ]);
    }
}

?>