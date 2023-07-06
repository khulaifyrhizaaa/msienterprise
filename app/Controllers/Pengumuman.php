<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Pengumuman_model;

class Pengumuman extends BaseController
{
  public function __construct()
  {
    helper(['form']);
    $model = new Pengumuman_model();
  }

  public function index()
  {
    # code...
    //$model = new Category_model();
    //$data['obat0014'] = $model->getCategory();
    $model = new Pengumuman_model();

    // Filtering 
    //$category   =   $this->request->getGet('category');
    // $keyword    =   $this->request->getGet('keyword');

    //$data['category']   =   $category; 
    // $data['keyword']    =   $keyword;

    // $obat0014     =   $model->where('id')->findAll();
    // $data['manajemenkelas'] = ['' => 'Pilih Category'] + array_column($obat0014, 'kelas', 'laki_laki');

    // filter 
    // $where      = [];
    // $like       = [];
    // $or_like    = [];

    //if(!empty($category)){ 
    //    $where = ['products.category_id' => $category]; 
    //}

    // if (!empty($keyword)) {
    //   $like = ['tahun_ajaran' => $keyword];
    //   $or_like = ['kelas' => $keyword, 'laki_laki' => $keyword, 'perempuan' => $keyword];
    // }
    // end filter

    // paginate 
    $paginate = 6;
    //$data['obat0014'] = $model->paginate($paginate, 'category'); 
    $data['dosen0072'] = $model->findAll();
    // $data['pager'] = $model->pager;
    // generate number untuk tetap bertambah meskipun pindah halaman paginate 
    // $nomor = $this->request->getGet('page_category');
    // define $nomor = 1 jika tidak ada get page_product 
    // if ($nomor == null) {
    //   $nomor = 1;
    // }
    // $data['nomor'] = ($nomor - 1) * $paginate;
    // end generate number

    echo view('pengumuman/idx24', $data);
  }

  public function create24()
  {
    # code...

    return view('pengumuman/create24');
  }

  public function store24()
  {
    $validation =  \Config\Services::validation();

    $data = array(
      'id'         => $this->request->getPost('id'),
      'konten'         => $this->request->getPost('konten'),
      'tanggal'    => $this->request->getPost('tanggal'),
    );

    if ($validation->run($data, 'pengumuman') == FALSE) {
      session()->setFlashdata('inputs', $this->request->getPost());
      session()->setFlashdata('errors', $validation->getErrors());
      return redirect()->to(base_url('pengumuman/create24'));
    } else {
      $model = new Pengumuman_model();
      $simpan = $model->insertCategory($data);
      if ($simpan) {
        session()->setFlashdata('dark', 'Created Successfully');
        return redirect()->to(base_url('pengumuman'));
      }
    }
  }

  public function edit24($id)
  {
    # code...
    $model = new Pengumuman_model();
    $data['pengumuman'] = $model->getCategory($id)->getRowArray();
    // dd($data);
    echo view('pengumuman/edit24', $data);
  }

  public function update24()
  {
    # code...
    $id = $this->request->getPost('id');
    $validation = \Config\Services::validation();
    $data = array(
      'id'         => $this->request->getPost('id'),
      'konten'         => $this->request->getPost('konten'),
      'tanggal'    => $this->request->getPost('tanggal')
    );
    // dd($data);
    if ($validation->run($data, 'pengumuman') == FALSE) {
      session()->setFlashdata('inputs', $this->request->getPost());
      session()->setFlashdata('errors', $validation->getErrors());
      return redirect()->to(base_url('pengumuman/edit24/' . $id));
    } else {
      $model = new Pengumuman_model();

      $ubah = $model->updateCategory($data, $id);
      if ($ubah) {
        session()->setFlashdata('info', 'Updated Successfully');
        return redirect()->to(base_url('pengumuman'));
      }
    }
  }


  public function show24($id)
  {
    $model = new Pengumuman_model();
    //$data['category'] = $this->Category_model->getCategory($id);
    $data['pengumuman'] = $model->getCategory($id)->getRowArray();
    echo view('pengumuman/show24', $data);
  }


  public function delete24($id)
  {
    $model = new Pengumuman_model();
    $hapus = $model->deleteCategory($id);
    if ($hapus) {
      session()->setFlashdata('warning', 'Deleted Category Succesfully');
      return redirect()->to(base_url('pengumuman'));
    }
  }
}
