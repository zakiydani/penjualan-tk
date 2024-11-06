<div class="container mt-3">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Barang
        </button>
      </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
          <h3>Daftar Barang</h3>
          <ul class="list-group">
            <?php foreach( $data['br'] as $br ) : ?>
              <li class="list-group-item">
                  <?= $br['NamaBarang'];?>
                  <?= $br['Keterangan'];?>
                  <?= $br['Satuan'];?>
                  <a href="<?= BASEURL; ?>/barang/delete/<?= $br['IdBarang']; ?>" class="badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                  <a href="<?= BASEURL; ?>/barang/updateDetail/<?= $br['IdBarang']; ?>" class="badge-primary float-right">Ubah</a>
              </li>
            <?php endforeach; ?>
          </ul>
        </div>
    </div>

</div>


<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form action="<?= BASEURL; ?>/barang/add" method="post">
          <input type="hidden" name="IdBarang" id="IdBarang">
          <div class="form-group">
            <label for="NamaBarang">NamaBarang</label>
            <input type="text" class="form-control" id="NamaBarang" name="NamaBarang" placeholder="Namabarang">
          </div>

          <div class="form-group">
            <label for="Keterangan">Keterangan</label>
            <input type="text" class="form-control" id="Keterangan" name="Keterangan" placeholder="Keterangan">
          </div>

          <div class="form-group">
            <label for="Satuan">Satuan</label>
            <input type="number" class="form-control" id="Satuan" name="Satuan" placeholder="Satuan">
          </div>

      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>
      </div>
    </div>
  </div>
</div>





