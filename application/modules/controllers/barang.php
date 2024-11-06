<?php

class Barang extends Controller {

    private function renderWithTemplate($view, $data = [])
    {
        $this->view('templates/header', $data);
        $this->view($view, $data);
        $this->view('templates/footer');
    }
    public function index()
    {
        $data['judul'] = 'Daftar Barang';
        $data['br'] = $this->model('ModelBarang')->getAllBarang();
        $this->view('templates/header', $data);
        $this->view('barang/index', $data);
        $this->view('templates/footer');
    }

    public function updateDetail($id)
    {
        $data['judul'] = 'Detail Barang';
        $data['br'] = $this->model('ModelBarang')->getBarangById($id);
        $this->view('templates/header', $data);
        $this->view('barang/update', $data);
        $this->view('templates/footer');
    }

    public function add()
    {
        if( $this->model('ModelBarang')->addBarang($_POST) > 0 ) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
            header('Location: ' . BASEURL . '/barang');
            exit;
        } else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
            header('Location: ' . BASEURL . '/barang');
            exit;
        }
    }

    public function delete($id)
    {
        if( $this->model('ModelBarang')->deleteBarang($id) > 0 ) {
            Flasher::setFlash('berhasil', 'dihapus', 'success');
            header('Location: ' . BASEURL . '/barang');
            exit;
        } else {
            Flasher::setFlash('gagal', 'dihapus', 'danger');
            header('Location: ' . BASEURL . '/barang');
            exit;
        }
    }

    public function getUpdate()
    {
        echo json_encode($this->model('ModelBarang')->getBarangById($_POST['id']));
    }

    public function update()
    {
        if( $this->model('ModelBarang')->updateBarang($_POST) > 0 ) {
            Flasher::setFlash('berhasil', 'diubah', 'success');
            header('Location: ' . BASEURL . '/barang');
            exit;
        } else {
            Flasher::setFlash('gagal', 'diubah', 'danger');
            header('Location: ' . BASEURL . '/barang');
            exit;
        }
    }


}