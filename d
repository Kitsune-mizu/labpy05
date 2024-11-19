def tampilkan_data():
    if not data_mahasiswa:
        print("Tidak ada data.")
    else:
        print("="*60)
        print("| NO |    NIM    |    NAMA    | TUGAS | UTS | UAS |  AKHIR  |")
        print("="*60)
        for i, (nim, data) in enumerate(data_mahasiswa.items(), start=1):
            print(f"| {i:<2} | {nim:<8} | {data['nama']:<10} | {data['tugas']:<5} | {data['uts']:<3} | {data['uas']:<3} | {data['akhir']:<7.2f} |")
        print("="*60)