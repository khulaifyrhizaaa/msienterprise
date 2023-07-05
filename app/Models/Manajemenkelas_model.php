<?php 

namespace App\Models;

use CodeIgniter\Model;

class Manajemenkelas_model extends Model{
    protected $table = 'manajemen_kelas';
    protected $primaryKey = 'kelas';

    public function getCategory($id = false)
    {
        # code...
        if ($id == false){
            
            return $this->findAll();
        }else{
            return $this->getWhere(['kelas' => $id ]);
        }
    }

    public function insertCategory($data)
    {
        # code...
        return $this->db->table($this->table)->insert($data);
    }

    public function updateCategory($data, $id)
    {
        # code...
        return $this->db->table($this->table)->update($data,['kelas' =>$id]);
    }

    public function deleteCategory($id)
    {
    # code...
    return $this->db->table($this->table)->delete(['kelas' =>$id]);
    }

}
