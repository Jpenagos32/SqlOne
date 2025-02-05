<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateTableVendedores extends Migration {
  public function up() {
    $this->forge->addField([
      'MATRICULA' =>[
        'type' => 'VARCHAR',
        'constraint' => '5',
        'null' => false,
      ],
      'NOMBRE' =>[
        'type' => 'VARCHAR',
        'constraint' => '100',
        'null' => true,
      ],
      'PORCENTAGE_COMISION' =>[
        'type' => 'FLOAT',
        'null' => true,
      ],
      'FECHA_ADMISION' =>[
        'type' => 'DATE',
        'null' => true,
      ],
      'VACACIONES' =>[
        'type' => 'BIT',
        'constraint' => '1',
        'null' => true,
      ],
      'BARRIO' =>[
        'type' => 'VARCHAR',
        'constraint' => '50',
        'null' => true,
      ]
    ]);
    $this->forge->addprimaryKey('MATRICULA');
    $this->forge->createTable('tabla_de_vendedores', true);
  }
  
  public function down() {
    //
  }
}
