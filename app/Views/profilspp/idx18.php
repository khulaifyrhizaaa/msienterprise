<?php echo view('_partials/header'); ?>
<?php echo view('_partials/sidebar'); ?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Sumbangan Pembinaan Pendidikan</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Data Siswa</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <!-- List Siswa -->
                            <div class="btn-group float-right">
                                <!-- <a href="<?php echo base_url('spp/create4'); ?>" class="btn btn-primary"> + Tambah </a> -->
                                <a href="profilspp/excel18" type="button" class="btn btn-success" name="excel18">
                                    <b>
                                        <i class="fas fa-file-csv"></i>&nbsp;&nbsp;Excel
                                    </b>
                                </a>
                                <a href="profilspp/print18" type="button" class="btn btn-light" name="print18">
                                    <b>
                                        <i class="fas fa-print"></i>&nbsp;&nbsp;Print
                                    </b>
                                </a>
                            </div>
                        </div>


                        <div class="card-body">
                            <?php
                            if (!empty(session()->getFlashdata('success'))) { ?>
                                <div class="alert alert-success">
                                    <?php echo session()->getFlashdata('success'); ?>
                                </div>
                            <?php } ?>

                            <?php if (!empty(session()->getFlashdata('info'))) { ?>
                                <div class="alert alert-info">
                                    <?php echo session()->getFlashdata('info'); ?>
                                </div>
                            <?php } ?>

                            <?php if (!empty(session()->getFlashdata('warning'))) { ?>
                                <div class="alert alert-warning">
                                    <?php echo session()->getFlashdata('warning'); ?>
                                </div>
                            <?php } ?>

                            <!-- <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <?php
                                        echo form_label('Cari Disini');
                                        $form_keyword = [
                                            'type'  => 'text',
                                            'name'  => 'keyword',
                                            'id'    => 'keyword',
                                            // 'value' => $keyword,
                                            'class' => 'form-control',
                                            'placeholder' => 'Silahkan Cari'
                                        ];
                                        echo form_input($form_keyword);
                                        ?>
                                    </div>
                                </div>
                            </div> -->

                            <div class="table-responsive">
                                <table class="table table-bordered table-hovered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>NIS</th>
                                            <th>Tanggal Bayar</th>
                                            <th>Bulan</th>
                                            <th>Beban Pembayaran</th>
                                            <th>Bukti Spp</th>
                                            <th>ID Pegawai</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $nomor = 0;
                                        foreach ($dosen0072 as $key => $row) { ?>
                                            <tr>
                                                <td><?php echo $key + 1; ?></td>
                                                <td><?php echo $row['nis']; ?></td>
                                                <td><?php echo $row['tanggal_bayar']; ?></td>
                                                <td><?php echo $row['bulan']; ?></td>
                                                <td><?php echo $row['beban_pembayaran']; ?></td>
                                                <td><img src="<?php echo base_url('../uploads/' . $row['bukti_spp']) ?>" class="rounded-circle" width="50" height="50"></td>
                                                <td><?php echo $row['id_pegawai']; ?></td>
                                                
                                                <td>
                                                    
                                                    <div class="btn-group">
                                                        <a href="<?php echo base_url('profilspp/show18/' . $row['nis']); ?>" class="btn btn-sm btn-primary" >
                                                             
                                                            <i class="fa fa-eye" ></i>
                                                        </a>
                                                          
                                                        <!-- <a href="<php echo base_url('spp/edit4/' . $row['nis']); ?>" class="btn btn-sm btn-success">
                                                            <i class="fa fa-edit"></i>
                                                        </a>
                                                        <a href="<php echo base_url('spp/delete4/' . $row['nis']); ?>" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus Pendaftar ini?');">
                                                            <i class="fa fa-trash-alt"></i>
                                                        </a> -->
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- <div class="row mt-3 float-right">
                                <div class="col-md-12">
                                    <php echo $pager->links('spp', 'bootstrap_pagination') ?>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo view('_partials/footer'); ?>