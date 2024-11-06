<div>
<form action="<?= BASEURL; ?>/barang/update" method="post">
          <input type="hidden" name="IdBarang" id="IdBarang" value="<?= $data['br']['IdBarang']; ?>">
          <div class="form-group">
            <label for="NamaBarang">NamaBarang</label>
            <input type="text" class="form-control" id="NamaBarang" name="NamaBarang" value="<?= $data['br']['NamaBarang']; ?>">
          </div>

          <div class="form-group">
            <label for="Keterangan">Keterangan</label>
            <input type="text" class="form-control" id="Keterangan" name="Keterangan" value="<?= $data['br']['Keterangan']; ?>">
          </div>

          <div class="form-group">
            <label for="Satuan">Satuan</label>
            <input type="number" class="form-control" id="Satuan" name="Satuan" value="<?= $data['br']['Satuan']; ?>">
          </div>

      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Ubah Data</button>
        </form>
</div>