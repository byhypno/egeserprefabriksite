<?php
header('Content-Type: text/plain; charset=utf-8');

if (function_exists('opcache_reset')) {
    $ok = opcache_reset();
    echo $ok ? "OPcache basariyla temizlendi.\n" : "OPcache temizlenemedi (opcache_reset false dondu).\n";
} else {
    echo "Bu sunucuda OPcache aktif degil veya opcache_reset fonksiyonu kapali.\n";
}

if (function_exists('clearstatcache')) {
    clearstatcache(true);
    echo "Dosya durum onbellegi de temizlendi.\n";
}

echo "\nBu islem bittikten sonra bu dosyayi (opcache-temizle.php) sunucudan SIL.\n";
