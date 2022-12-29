import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/features/alumni/presentation/widgets/alumni_item.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:darul_falah/core/presentation/widgets/chip.dart';
import 'package:flutter/material.dart';

class AlumniBody extends StatelessWidget {
  AlumniBody({
    Key? key,
  }) : super(key: key);

  final List<Alumni> listAlumn = [
    Alumni(
      id: 1,
      name: "DR. KH. Irfan Soleh, S.Th.I., M.B.A.",
      role: "Pengasuh Ponpes Raudlatul Irfan Ciamis",
      photo: "irfan_soleh.png",
    ),
    Alumni(
      id: 2,
      name: "M. Anwar Firdaus, S.IP",
      role: "Santripreneur",
      photo: "anwar.png",
      descriptions: {
        "pengalaman":
            "M. Anwar Firdaus, Akrab dipanggil dengan Gus Anwar, adalah seorang entrepreneur dengan pengalaman lebih dari 7 tahun dalam segala bidang  bisnis. ia telah melakoni bermacam-macam bidang bisnis retail, kuliner, dan Software/Aplikasi. Salah Satu aplikasi yang dikembangkan adalah aplikasi untuk komunitas dan Organisasi",
        "prestasi": [
          "Sambel gami Cak Man (Kuliner)",
          "Software Aplikasi",
          "Taskia (Retail Fashion)"
        ],
        "topik": [
          "Entrepreneur",
          "Cara Memulai Bisnis",
          "Kuliner yang unik dan menarik"
        ]
      },
    ),
    Alumni(
        id: 3,
        name: "M. Mu’tamid Ihsanillah, Lc, MA.",
        role: "Dosen STAISPA Yogyakarta",
        photo: "mutamid.png",
        descriptions: {
          "prestasi": [
            "Juara 1 MQK Nasional (Musabaqah Qiraatil Kutub) tahun 2011 di NTB",
            "Juara harapan 1 MQK Nasional tahun 2014 di Jambi",
            "Awardee Beasiswa Kementerian Wakaf dan Urusan Islam Maroko tahun 2016- 2019",
            "Mewakili Indonesia dalam Festival Santri Berprestasi se-Kerajaan Maroko oleh Pangeran Moulay Hassan tahun 2018",
            "Awardee Beasiswa Kementerian Pendidikan Tinggi jenjang Magister tahun 2019 - 2021"
          ],
          "organisasi": [
            "2012-2013 Wakil Ketua Osis SMP IT Amtsilati",
            "2013-2014 Angota Qismul Lughah Al-Arabiyah Asrama Darussalam",
            "2014-2015 Departemen Pendidikan Asrama Bahasa Asrama Darussalam",
            "2015-2016 Ketua IPNU - Kota Magelang",
            "2016-2017 Anggota LTN NU - PCINU Maroko",
            "2017-2018 Divisi Media Informasi Perhimpunan Pelajar Indonesia (PPI) Maroko",
            "2018-2019 Panitia Pemilihan Luar Negeri (PPLN) Rabat",
            "2018-2019 Koordinator Pelajar Wilayah kota Tanger, Tetouan, al Aioun dan Oujda",
            "2019 Ketua Organizing Comitte (OC) Musyawarah Besar PPI Maroko",
          ]
        }),
    Alumni(
        id: 4,
        name: "M Dzikrullah Faza, Lc,. M.irkh",
        role: "Dosen UIN Abdurahman Wahid Pekalongan",
        photo: "dzikrullah.png",
        descriptions: {
          "pengalaman": [
            "Dosen ITSNU Pekalongan, UIN Abdurahman Wahid Pekalongan",
            "Diniyah wutho pasca amtsilati",
            "Diniyah Ulya pasca amtsilati",
            "S1 Al-ahgaff University Yaman",
            "S2 IIUM (International Islamic University Malaysia)"
          ]
        }),
    Alumni(
        id: 5,
        name: "UST. Sahal Mahfudh, M.Pd.",
        role: "Dosen Ma’had Aly Yanbu’ul Quran Kudus",
        photo: "sahal.png",
        descriptions: {
          "prestasi": [
            "Owner Penerbit Sahadah Press Pati",
            "Owner Kaos Arab Pegon",
            "Owner Batik Tulis Arab Pegon",
            "Owner Sarung Batik Tulis Siman",
            "Owner Buroq Food Pati",
            "Founder Daurah Amtsilati Online",
            "Founder Jam’iyyah Maulid dan Shalawat 'JIMAT GAMAN' Siman Tambah Sari Pati",
            "Founder Jam'iyyah Mudarosah Tartil Ahad Pon-an",
          ],
          "karya": [
            "Peranan Pesantren Kajen Dalam Pemberdayaan Pendidikan Keagamaan Masyarakat Sekitar(Penelitian: P3M STAIMAFA, 2011)",
            "Pengaruh Lingkungan Sosial Pesantren Dalam Pembentukan Karakter Santri di Kajen dan Sekitarnya(Penelitian: Journal Nadzariyyat, 2013)",
            "Model Pembentukan Karakter Religius (Religious Character Building) Santri Tahfidz al-Quran Pondok Pesantren Mathali‟ul Huda Kajen Pati (Penelitian: Journal Puslitbang Kemenag, 2015)",
            "Sholeh & Akrom: Ngangsu Banyu Kahuripan Ing Pesantren (Kumpulan Cerita Fiksi Dialog Imajiner Kang Sholeh & Kang Akrom: Sahadah Press, 2014)",
            "Petuah Fatihah, dalam Kumpulan Cerpen Santri Kajen (Kumpulan Cerpen: Perpustakaan Mutama",
          ]
        }),
    Alumni(
      id: 6,
      name: "R.KH. Ibrohim Al-Kholili",
      role: "Influencer",
      photo: "ibrohim.png",
    ),
    Alumni(
        id: 7,
        name: "KH Zaimuddin Ahya, S.Ag.",
        role: "Founder takselesai.com",
        photo: "zaimuddin.png",
        descriptions: {
          "organisasi": [
            "Pemimpin Redaksi Lembaga Pers Mahasiswa (LPM) IDEA Fakultas Ushuluddin dan Humaniora UIN Walisongo 2015",
            "Ketua Senat Mahasiswa Fakultas Ushuluddin dan Humaniora UIN Walisongo 2014",
            "Pengurus Pergerakan Mahasiswa Islam Indonesia (PMII) Cabang Kota Semarang 2016-2017",
            "Pengurus Kelompok Studi Mahasiswa Walisongo (KSMW) UIN Walisongo 2015",
            "Koordinator Divisi Terjemah UKM Bahasa Arab Nafilah UIN Walisongo Semarang 2014",
          ],
          "karya tulis": [
            "Tipologi dan Respon Terhadap Informasi Menurut Alquran  (penerbit Guepedia, 2019)",
            "Dunia Kiai: Sehimpun Keteladanan Orang Pesantren (penerbit Guepedia, 2019)",
            "Bela Negara untuk Siapa? (terbit di rubik opini koran Wawasan Semarang 19 November 2015)",
            "Saring Informasi Cegah Pemerkosaan (terbit di koran Tribun Jateng 26 Mei 2016)",
            "Media Sosial dan Ruang Publik Sehat (Terbit di Jalandamai.or.id)"
          ]
        }),
    Alumni(
        id: 8,
        name: "UST. Alfan Nurngain, M.Pd.",
        role: "Pemimpin Redaksi Andormeda FITK UNSIQ",
        photo: "alfan.png",
        descriptions: {
          "organisasi": [
            "Pemimpin Redaksi Andormeda Fakultas Ilmu Tarbiyah dan Keguruan UNSIQ",
            "Redaktur Majalah Sautul Qur’an UNSIQ",
            "Wakil Senat Fakultas Ilmu Tarbiyah dan Keguruan UNSIQ",
            "Sekretaris Jendral BEM UNSIQ",
            "Pengurus Komisariat PMII UNSIQ",
            "Pengurus Cabang PMII UNSIQ",
            "Ketua Ansor Ranting Patakbanteng",
            "Sekretaris Ansor Pimpinan Anak Cabang Kejajar",
            "Ketua Ansor Pimpinan Anak Cabang Kejajar",
            "Pengurus Cabang Ansor Kabupaten Wonosobo",
            "Lembaga Hukum, Politik, dan Pemerintahan Ansor Cabang Wonosobo",
            "Ketua Koordinator Pemberdayaan Masyarakat Desa Patakbanteng",
          ],
          "karya tulis": [
            "Perbandingan Ilmu Pendidikan Menurut Muhammad Athiyah Al-Abrasyi dengan Paulo Freire",
            "Konsep Pendidikan Islam dalam RitualPotong Rambut Gimbal di Dataran Tinggi Dieng Metode Pendidikan dalam Islam",
          ]
        }),
    Alumni(
      id: 9,
      name: "KH. Choirul Anam, S.Ag.",
      role: "Mubaligh",
      photo: "choirul.png",
      descriptions: {
        "angkatan": "2004",
        "alamat":
            " Dk. Cendono Lor RT/RW 003/001 Desa Tembok, Kec. Limpung, Kab. Batang 51271 Jawa Tengah",
        "organisasi": [
          "Lembaga Dakwah PC NU Batang : 2019-2024",
          "Lembaga Dakwah MWC NU Limpung 2022-2027",
          "DPC Petanesia Kab. Batang",
        ],
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          left: -160,
          child: Image.asset(
            "images/shape5.png",
            scale: 1,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: basePadding),
              child: CustomChip(
                text: "Filter",
                fontSize: 13,
                backgroundColor: Colors.white,
                color: violet[900]!,
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  size: 16,
                ),
                border: Border.all(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
            const SizedBox(
              height: largePadding,
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(basePadding),
                itemCount: listAlumn.length,
                itemBuilder: (context, index) {
                  return AlumniItem(alumni: listAlumn[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: smallPading,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
