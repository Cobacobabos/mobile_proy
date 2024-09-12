function Hitung_Pengeluaran() {
    echo "Masukkan jumlah pengembang:"  
    read pekerja  

    echo "Masukkan gaji per pengembang per bulan (dalam Rupiah):"  
    read gaji_pekerja  

    echo "Masukkan lama proyek (dalam bulan):"  
    read lama_projek

    echo "Masukkan biaya server per bulan (dalam Rupiah):"  
    read biaya_server 

    echo "Masukkan biaya lisensi software (dalam Rupiah):" 
    read lisensi_software 

    echo "Masukkan biaya operasional lainnya (dalam Rupiah):"  
    read biaya_lain_lain

    echo "Masukkan anggaran awal proyek (dalam Rupiah):"  
    read anggaran

    total_salary=$((pekerja * gaji_pekerja * lama_projek))

    total_server_cost=$((biaya_server * lama_projek))

    total_cost=$((total_salary + total_server_cost + lisensi_software + biaya_lain_lain))

    remaining_budget=$((anggaran - total_cost))

    echo "------------------------"  
    echo "Total biaya gaji pengembang: Rp $total_salary" 
    echo "Total biaya server: Rp $total_server_cost"  
    echo "Total biaya lisensi software: Rp $lisensi_software" 
    echo "Total biaya operasional: Rp $biaya_lain_lain"  
    echo "------------------------"  
    echo "Total biaya keseluruhan proyek: Rp $total_cost"  
    echo "Sisa anggaran: Rp $remaining_budget"  

    if [ $remaining_budget -lt 0 ]; then
        echo "Proyek melebihi anggaran sebesar Rp ${remaining_budget#-}"
    else
        echo "Proyek dapat diselesaikan dengan anggaran."
    fi
}

Hitung_Pengeluaran