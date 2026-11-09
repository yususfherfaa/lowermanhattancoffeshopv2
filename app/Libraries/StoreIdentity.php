<?php

namespace App\Libraries;

class StoreIdentity
{
    /**
     * @return array{
     *     nama_toko: string,
     *     alamat_lengkap: string,
     *     nmid: string|null,
     *     qris_image: string,
     *     qris_mode: string,
     *     is_demo: bool
     * }
     */
    public static function get(): array
    {
        $namaToko = trim((string) (setting('nama_toko') ?? ''));
        if ($namaToko === '') {
            $namaToko = trim((string) (setting('nama_warkop') ?? ''));
        }
        $namaToko = $namaToko ?: 'Lower Manhattan Coffee Shop';
        $alamat = trim((string) (setting('alamat_lengkap') ?? ''));
        if ($alamat === '') {
            $alamat = trim((string) (setting('alamat') ?? ''));
        }
        $rawNmid = strtoupper(preg_replace('/\s+/', '', trim((string) (setting('nmid') ?? ''))));
        $nmid = preg_match('/^[A-Z]{2}[0-9A-Z]{8,20}$/', $rawNmid) ? $rawNmid : null;
        $qrisMode = strtolower(trim((string) (setting('qris_mode') ?? 'demo'))) === 'live' ? 'live' : 'demo';
        $placeholder = 'uploads/qris-placeholder.svg';
        $demoImage = 'uploads/qris-demo-lowermanhattan.png';
        $qrisImage = $qrisMode === 'demo' ? $demoImage : trim((string) (setting('qris') ?? $placeholder));

        if (str_contains($qrisImage, '..') || str_starts_with($qrisImage, '/')) {
            $qrisImage = $placeholder;
        }
        if (!is_file(FCPATH . ltrim($qrisImage, '/\\'))) {
            $qrisImage = $placeholder;
        }

        $isDemo = $qrisMode === 'demo' || $qrisImage === $placeholder || $qrisImage === $demoImage;

        return [
            'nama_toko' => mb_substr(preg_replace('/[\x00-\x1F\x7F]/u', '', $namaToko), 0, 100),
            'alamat_lengkap' => mb_substr(preg_replace('/[\x00-\x1F\x7F]/u', '', $alamat), 0, 255),
            'nmid' => $isDemo ? null : $nmid,
            'qris_image' => $qrisImage,
            'qris_mode' => $qrisMode,
            'is_demo' => $isDemo,
        ];
    }
}
