# Dictionary untuk menyimpan data mahasiswa
data_mahasiswa = {}

def hitung_nilai_akhir(tugas, uts, uas):
    return (0.3 * tugas) + (0.35 * uts) + (0.35 * uas)

def tampilkan_data():
    print("="*60)
    print("| NO |    NIM    |    NAMA    | TUGAS | UTS | UAS |  AKHIR  |")
    print("="*60)
    if not data_mahasiswa:
        print("|                    TIDAK ADA DATA                      |")
    else:
        for i, (nim, data) in enumerate(data_mahasiswa.items(), start=1):
            print(f"| {i:<2} | {nim:<8} | {data['nama']:<10} | {data['tugas']:<5} | {data['uts']:<3} | {data['uas']:<3} | {data['akhir']:<7.2f} |")
    print("="*60)

def tambah_data():
    nim = input("Masukkan NIM: ")
    nama = input("Masukkan Nama: ")
    tugas = float(input("Masukkan Nilai Tugas: "))
    uts = float(input("Masukkan Nilai UTS: "))
    uas = float(input("Masukkan Nilai UAS: "))
    akhir = hitung_nilai_akhir(tugas, uts, uas)
    data_mahasiswa[nim] = {"nama": nama, "tugas": tugas, "uts": uts, "uas": uas, "akhir": akhir}
    print("Data berhasil ditambahkan.")

def ubah_data():
    nim = input("Masukkan NIM mahasiswa yang akan diubah: ")
    if nim in data_mahasiswa:
        print("Data ditemukan. Silakan ubah.")
        nama = input("Masukkan Nama Baru: ")
        tugas = float(input("Masukkan Nilai Tugas Baru: "))
        uts = float(input("Masukkan Nilai UTS Baru: "))
        uas = float(input("Masukkan Nilai UAS Baru: "))
        akhir = hitung_nilai_akhir(tugas, uts, uas)
        data_mahasiswa[nim] = {"nama": nama, "tugas": tugas, "uts": uts, "uas": uas, "akhir": akhir}
        print("Data berhasil diubah.")
    else:
        print("Data tidak ditemukan.")

def hapus_data():
    nim = input("Masukkan NIM mahasiswa yang akan dihapus: ")
    if nim in data_mahasiswa:
        del data_mahasiswa[nim]
        print("Data berhasil dihapus.")
    else:
        print("Data tidak ditemukan.")

def cari_data():
    nim = input("Masukkan NIM mahasiswa yang dicari: ")
    if nim in data_mahasiswa:
        data = data_mahasiswa[nim]
        print("Data ditemukan:")
        print(f"NIM: {nim}")
        print(f"Nama: {data['nama']}")
        print(f"Nilai Tugas: {data['tugas']}")
        print(f"Nilai UTS: {data['uts']}")
        print(f"Nilai UAS: {data['uas']}")
        print(f"Nilai Akhir: {data['akhir']:.2f}")
    else:
        print("Data tidak ditemukan.")

while True:
    print("\nMenu: [T]ambah Data  |  [U]bah Data  |  [H]apus Data  |  [L]ihat Data  |  [C]ari Data  |  [K]eluar")
    pilihan = input("Pilih menu: ").lower()

    if pilihan == "t":
        tambah_data()
    elif pilihan == "u":
        ubah_data()
    elif pilihan == "h":
        hapus_data()
    elif pilihan == "l":
        tampilkan_data()
    elif pilihan == "c":
        cari_data()
    elif pilihan == "k":
        print("Keluar dari program.")
        break
    else:
        print("Pilihan tidak valid.")
