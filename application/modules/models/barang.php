<?php

class ModelBarang {
    private $table = 'barang';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllBarang()
    {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    public function getBarangById($IdBarang)
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE IdBarang=:IdBarang');
        $this->db->bind('IdBarang', $IdBarang);
        return $this->db->single();
    }

    public function addBarang($data)
    {
        $query = "INSERT INTO barang
                    VALUES
                  (null,:NamaBarang, :Keterangan, :Satuan,null)";

        $this->db->query($query);
        $this->db->bind('NamaBarang', $data['NamaBarang']);
        $this->db->bind('Keterangan', $data['Keterangan']);
        $this->db->bind('Satuan', $data['Satuan']);

        $this->db->execute();

        return $this->db->rowCount();;
    }

    public function deleteBarang($IdBarang)
    {
        $query = "DELETE FROM barang WHERE IdBarang = :IdBarang";

        $this->db->query($query);
        $this->db->bind('IdBarang', $IdBarang);

        $this->db->execute();

        return $this->db->rowCount();
    }


    public function updateBarang($data)
    {
        $query = "UPDATE barang SET
                    NamaBarang = :NamaBarang,
                    Keterangan = :Keterangan,
                    Satuan = :Satuan
                  WHERE IdBarang = :IdBarang";

        $this->db->query($query);
        $this->db->bind('NamaBarang', $data['NamaBarang']);
        $this->db->bind('Keterangan', $data['Keterangan']);
        $this->db->bind('Satuan', $data['Satuan']);
        $this->db->bind('IdBarang', $data['IdBarang']);

        $this->db->execute();

        return $this->db->rowCount();
    }



}