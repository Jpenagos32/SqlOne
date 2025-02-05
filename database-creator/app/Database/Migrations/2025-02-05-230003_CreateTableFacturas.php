<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateTableFacturas extends Migration {
  public function up() {
    $this->forge->addField([
      'DNI' =>[
        'type' => 'VARCHAR',
        'constraint' => '11',
        'null' => false,
      ],
      'MATRICULA' =>[
        'type' => 'VARCHAR',
        'constraint' => '5',
        'null' => false,
      ],
      'FECHA_VENTA' =>[
        'type' => 'DATE',
        'null' => true,
      ],
      'NUMERO' => [
        'type' => 'INT',
        'null' => false,
      ],
      'IMPUESTO' =>[
        'type' => 'FLOAT',
        'null' => false,
      ]
    ]);
    $this->forge->addPrimaryKey('NUMERO');
    $this->forge->addForeignKey('DNI', 'tabla_de_clientes', 'DNI');
    $this->forge->addForeignKey('MATRICULA', 'tabla_de_vendedores', 'MATRICULA');
    $this->forge->createTable('facturas', true);
  }
  
  public function down() {
    //
  }
}
