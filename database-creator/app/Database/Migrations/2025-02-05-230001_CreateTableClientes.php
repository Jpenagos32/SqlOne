<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateTableClientes extends Migration {
  public function up() {
    $this->forge->addField([
      'DNI' =>[
        'type' => 'VARCHAR',
        'constraint' => '11',
        'null' => false,
      ],
      'NOMBRE' =>[
        'type' => 'VARCHAR',
        'constraint' => '100',
        'null' => true,
      ],
      'DIRECCION_1' =>[
        'type' => 'VARCHAR',
        'constraint' => '150',
        'null' => true,
      ],
      'DIRECCION_2' =>[
        'type' => 'VARCHAR',
        'constraint' => '150',
        'null' => true,
      ],
      'BARRIO' =>[
        'type' => 'VARCHAR',
        'constraint' => '50',
        'null' => true,
      ],
      'CIUDAD' =>[
        'type' => 'VARCHAR',
        'constraint' => '50',
        'null' => true,
      ],
      'ESTADO' =>[
        'type' => 'VARCHAR',
        'constraint' => '2',
        'null' => true,
      ],
      'CP' =>[
        'type' => 'VARCHAR',
        'constraint' => '8',
        'null' => true,
      ],
      'FECHA_DE_NACIMIENTO' =>[
        'type' => 'DATE',
        'null' => true,
      ],
      'EDAD' =>[
        'type' => 'SMALLINT',
        'null' => true,
      ],
      'SEXO' =>[
        'type' => 'VARCHAR',
        'constraint' => '1',
        'null' => true,
      ],
      'LIMITE_DE_CREDITO' =>[
        'type' => 'FLOAT',
        'null' => true,
      ],
      'VOLUMEN_DE_COMPRA' =>[
        'type' => 'FLOAT',
        'null' => true,
      ],
      'PRIMERA_COMPRA' =>[
        'type' => 'BIT',
        'constraint' => '1',
        'null' => true,
      ]
    ]);
    $this->forge->addPrimaryKey('DNI');
    $this->forge->createTable('tabla_de_clientes', true);
  }
  
  public function down() {
    //
  }
}
