<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateTableItemsFacturas extends Migration {
  public function up() {
    $this->forge->addField([
      'NUMERO' => [
        'type' => 'INT',
        'null' => false,
      ],
      'CODIGO_DEL_PRODUCTO' => [
        'type' => 'VARCHAR',
        'constraint' => '10',
        'null' => false,
      ],
      'CANTIDAD' => [
        'type' => 'INT',
        'constraint' => '11',
        'null' => false,
      ],
      'PRECIO' => [
        'type' => 'float',
        'null' => false,
      ]
    ]);
    // Añadir una clave primaria compuesta
    $this->forge->addKey(['NUMERO', 'CODIGO_DEL_PRODUCTO'], true);
    // Añadir el índice
    $this->forge->addKey('CODIGO_DEL_PRODUCTO');
    
    // añadir llaves foraneas
    // orden: nombreCampoEstaTabla, nombreOtraTabla, nombreCampoOtraTabla
    $this->forge->addForeignKey(
      'CODIGO_DEL_PRODUCTO',
      'tabla_de_productos',
      'CODIGO_DEL_PRODUCTO',
      'CASCADE',
      'CASCADE'
    );
    
    $this->forge->addForeignKey(
      'NUMERO',
      'facturas',
      'NUMERO',
      'CASCADE',
      'CASCADE'
    );
    
    $this->forge->createTable('items_facturas', true);
  }
  
  public function down() {
    //
  }
}
