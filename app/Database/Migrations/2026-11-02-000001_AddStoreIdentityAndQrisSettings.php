<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddStoreIdentityAndQrisSettings extends Migration
{
    public function up()
    {
        $builder = \Config\Database::connect()->table('settings');
        $currentSettings = $builder->get()->getResultArray();
        $existingKeys = array_column($currentSettings, 'nama');
        $defaults = [
            'nama_toko' => 'Lower Manhattan Coffee Shop',
            'alamat_lengkap' => '',
            'nmid' => '',
            'qris_mode' => 'demo',
        ];

        foreach ($defaults as $key => $default) {
            if (in_array($key, $existingKeys, true)) {
                continue;
            }

            $last = $builder->orderBy('id_setting', 'DESC')->first();
            $next = $last ? ((int) substr($last['id_setting'], 3) + 1) : 1;
            $builder->insert([
                'id_setting' => 'SET' . str_pad($next, 3, '0', STR_PAD_LEFT),
                'nama' => $key,
                'value' => $default,
            ]);
        }
    }

    public function down()
    {
        \Config\Database::connect()
            ->table('settings')
            ->whereIn('nama', ['nama_toko', 'alamat_lengkap', 'nmid', 'qris_mode'])
            ->delete();
    }
}
