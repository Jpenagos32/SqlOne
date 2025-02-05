<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateTableProductos extends Migration {
  public function up() {
    $this->forge->addField([
      'CODIGO_DEL_PRODUCTO' => [
        'type' => 'VARCHAR',
        'constraint' => '10',
      ],
      'NOMBRE_PRODUCTO' => [
        'type' => 'VARCHAR',
        'constraint' => '50',
        'null' => true,
      ],
      'TAMANO' => [
        'type' => 'VARCHAR',
        'constraint' => '10',
        'null' => true,
      ],
      'SABOR' => [
        'type' => 'VARCHAR',
        'constraint' => '20',
        'null' => true,
      ],
      'ENVASE' =>[
        'type' => 'VARCHAR',
        'constraint' => '20',
        'null' => true,
      ],
      'PRECIO_DE_LISTA' =>[
        'type' => 'FLOAT',
        'null' => false,
      ]
    ]);
    $this->forge->addprimaryKey('CODIGO_DEL_PRODUCTO');
    $this->forge->createTable('tabla_de_productos', true);
  }
  
  public function down() {
    //
  }
}
