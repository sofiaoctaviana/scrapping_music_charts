# *BILLBOARD HOT-100 SCRAPING*

![image](https://github.com/sofiaoctaviana/scrapping_music_charts/assets/111562104/7d8b6793-4e5e-4804-b0ee-63eff1060e2a)

## :newspaper: Deskripsi

Billboard adalah majalah musik Amerika yang dimiliki oleh Prometheus Global Media dan bermarkas di New York City. Majalah Billboard pertama kali diterbitkan pada tanggal 1 November 1894 dan termasuk majalah tertua di dunia. Majalah ini awalnya difokuskan pada topik pengumuman tagihan dan hiburan luar ruangan sebelum mengkhususkan pada topik industri musik pada era 1950-an.

Billboard mempertahankan beberapa _chart_ (tangga musik) yang diakui secara internasional, serta sebagai tangga musik paling populer di beberapa genre setiap pekan. Tangga musik utamanya adalah Billboard Hot 100 dan Billboard 200, keduanya menunjukkan peringkat lagu dan album terlepas dari genre musik. Peringkat lagu didasarkan pada download digital, penjualan elektronik, _aiplay radio_, dan _Internet streaming_. Sebagian besar data didasarkan pada rating Nielsen SoundScan, yang telah dipergunakan sejak tahun 1991.

Dalam _project_ ini, dilakukan scraping data dari website [Billboard Hot 100](https://www.billboard.com/charts/hot-100/). Billboard Hot 100 adalah sebuah tangga lagu yang memuat 100 _single_ terlaris di Amerika Serikat. Tangga lagu ini dibuat dengan memeringkat atau mengurutkan 100 buah _single_ berdasarkan data media penyiaran, penjualan, dan pemutaran di radio-radio di wilayah Amerika Serikat. Pemegang _single_ yang mencapai posisi 1 di tangga lagu ini merupakan sebuah kebanggaan bagi seorang artis.

## :bookmark_tabs: Dokumen MongoDB

Berikut tampilan salah satu dokumen dalam MongoDB
```sql
{"_id":{"$oid":"648b3c07270d719d4c001bc1"},
"rank":{"$numberDouble":"1.0"},
"title":"Last Night",
"artist":"Morgan Wallen"}
```

## 💻Web Scraping Documentation
Untuk dokumentasi lebih lengkap terkait web scraping, bisa dilihat [di sini](https://rpubs.com/sofiaoctaviana/1055394)

## :woman_technologist: Pengembang
Sofia Octaviana G1501221036

<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=github,mongodb,r" />
  </a>
</p>
