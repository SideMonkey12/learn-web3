# BLOCKCHAIN

## Apa itu Blockchain

Blockchain merupakan struktur teknologi yang menyimpan data kemudian mendistribuskannya ke semua komputer yang terhubung dalam jaringan tanpa ada pengendali tunggal.

References :

- [Geekforgeeks](https://www.geeksforgeeks.org/software-engineering/blockchain/)
- [IBM](https://www.ibm.com/id-id/think/topics/blockchain)

## Bagaimana cara kerja Blockchain

1. Saat sebuah data/transaksi dibuat, maka data tersebut dikirimkan ke jaringan Blokchain.
2. Sebelum data/transaksi tersebut disimpan dalam block, data akan diverifikasi oleh anggota dalam jaringan menggunakan algoritma konsesus.
3. Kemudian data/transaksi tersebut disimpan dalam sebuah block.
4. Selanjutnya block tadi akan dihubungkan dengan block sebelumnya dalam jaringan Blockchain.

References:

- [Dicoding](https://www.dicoding.com/blog/mengenal-blockchain-teknologi-yang-mengubah-dunia-digital/)
- [Binus](https://online.binus.ac.id/2022/07/18/pengertian-blockchain-serta-manfaat-dan-cara-kerjanya/)

# BLOCK, HASH & NONCE

## Apa itu Block

Block merupakan tempat yang digunakan untuk menyimpan data/transaksi pada teknologi Blockchain. Setipa Block ini akan akan dihubungkan satu sama lain membentuk rantai, sehingga tidak bisa diubah tanpa sepengatuan seluruh jaringan.

Struktur Blok dalam Blockchain

1. Header Blok
2. Body Blok
3. Hash Blok

References:

- [Bisaioti](https://bisaioti.com/struktur-dan-cara-kerja-blok-dalam-blockchain/)

## Apa itu Hash

Hash berfungsi untuk memvalidasi agar data tidak berubah, dengan mengubahnya menjadi string acak yang memiliki ukuran yang sama lewat algoritma tertentu seperti SHA-256.

References:

- [Invesnesia](https://www.invesnesia.com/blockchain/hashing/)

## Nonce

Nonce merupakan sebuah metode untuk mengurutkann & memisahkan transaksi pada jaringan Blockchain yang menggunakan Smart Contract seperti Etherium.

Kelemahan Nonce adalah apabila terjadi masalah pada urutan dengan nilai yang rendah maka transaksi selanjutnya akan eror.

References :

- [BitDegree](https://id.bitdegree.org/crypto/belajar/istilah-dalam-crypto/apa-itu-nonce#:~:text=Nonce%2C%20yang%20juga%20dikenal%20sebagai%20angka%20yang%20hanya,platform%20blockchain%20yang%20menggunakan%20kontrak%20pintar%2C%20seperti%20Ethereum.)

# Centralized vs Decentralized

## Perbedaan Centralized & Decentrelized

| Aspek        | Centralized                                   | Decentralize                                                          |
| ------------ | --------------------------------------------- | --------------------------------------------------------------------- |
| Keamanan     | Lebih rentan terhadap serangan siber          | Lebih aman karena data disimpan di banyak node                        |
| Skalabilitas | Sulit dikembangkan saat organisasi tumbuh     | Lebih mudah dikembangkan dengan banyak node                           |
| Kontrol      | Kontrol lebih banyak di tangan otoritas pusat | Memberi lebih banyak kekuasaan kepada pengguna                        |
| Kecepatan    | Biasanya lebih lambat                         | Dapat lebih cepat dengan banyak node                                  |
| Kecepatan    | Lebih mahal untuk didirikan dan dijaga        | Biaya awal mungkin lebih rendah, tetapi pemeliharaan bisa lebih mahal |

References :

- [Pintu](https://pintu.co.id/blog/centralized-adalah#perbedaan-centralized-vs-decentralized)

# PUBLIC KEY & PRIVATE KEY

## Public Key

Public key merupakan sebuah barisan kode kriptografi yang digunakan sebagai media untuk mengengkripsi, serta memvalidasi tanda tangan digital (_digital signatures_). Atau kita bisa anggap layaknya nomor rekening bank.

## Private Key

Private key merupakan sebuah baris kode rahasia yang berfungsi untuk membuka pesan yang tadinya terenkripsi oleh public key dan membuat tanda tangan digital. Kita bisa anggap private key sebagai nomor pin ATM, yang tidak boleh diketahui orang lain.

## Perbedaan Public key vs Private Key

| Fitur       | Public Key                           | Private Key                              |
| ----------- | ------------------------------------ | ---------------------------------------- |
| Tujuan      | Terima dana, verifikasi tanda tangan | Menandatangani transaksi, mengakses dana |
| Visibilitas | Dapat dibagikan dengan siapa saja    | Harus tetap rahasia                      |
| Analogi     | Nomor rekening bank                  | PIN atau kata sandi bank                 |
| Generate    | Berasal dari kunci pribadi           | Dibuat terlebih dahulu, sumber pasangan  |
| Dampak      | Dapat diambil                        | Dana menjadi tidak dapat diakses         |

references:

- [Moonpay](https://www.moonpay.com/learn/blockchain/public-key-vs-private-key)

# Digital Signature

## Apa itu Digital Signature

Digital signature merupakan sebuah barisan dari kode unik yang dihasilkan dari penggabungngan antara pesan/data dan private key. Yang kemudian bisa diverikasi dengan public key.

## Bagaimana Cara Kerja Digital Signature

Langkah 1: Hashing

> Pesan/data akan di hashing menjadi deretan kode unik

Langkah 2: Signing

> pada tahap wallet (Metamask/Trustwallet) akan menggunakan private key untuk "menstempel" hasil dari hash sebelumnya kemudian mengenkripsinya.

Langkah 3: Broadcasting

> pesan/data beserta signature yang sudah terenkripsi tadi akan dikirimkan ke jarinagn blockchain

Langkah 4: Verifikasi

> kemudian para validator akan menvalidasi apakah pesan/data tersebut

# Wallet Address

## Apa itu Wallet Address

Wallet address merupakan rangkaian karakter yang digunakan sebagai id pengenal dalam menyimpan, mengirim dan menerima aset kripto

## Bagaimana Wallet Address Terbentuk?

1. Private Key: Dimulai dari angka acak yang sangat besar (rahasiakan ini!).
2. Public Key: Private key diolah menggunakan matematika tingkat tinggi (Elliptic Curve Cryptography) untuk menjadi Public Key.
3. Hashing: Public Key tersebut kemudian "diringkas" menggunakan algoritma Hash (seperti Keccak-256 atau SHA-256).
4. Formatting: Hasil hash tadi diambil bagian belakangnya dan ditambah awalan tertentu (seperti 0x untuk Ethereum) untuk menjadi Wallet Address.

note: Proses ini bersifat satu arah. Orang bisa tahu alamat Anda dari Public Key, tapi tidak ada yang bisa menebak Private Key Anda hanya dengan melihat Wallet Address.

## Karakteristik Wallet Address

| Jaringan       | Contoh Format | Ciri Khas                                                          |
| -------------- | ------------- | ------------------------------------------------------------------ |
| Ethereum (EVM) | 0x71C...397   | Selalu dimulai dengan 0x, terdiri dari 42 karakter.                |
| Bitcoin        | bc1q...6f9    | Sering dimulai dengan 1, 3, atau bc1 (SegWit).                     |
| Solana         | 4zV...8pQ     | Menggunakan Base58, kombinasi huruf besar dan kecil yang sensitif. |

# Gas Fee

## Apa itu Gas Fee?

Gas fee merupakan biaya untuk menjalankan setiap transaksi pada jaringan blockchain, khususnya pada jaringan Etherium yang dibayarkan oleh pengguna.

note: Di beberapa jaringan blockchain mungkin penamaannya berbeda, seperti pada jarinan Bitcoin dinamakan _Transaction Fee_

## Mengapa Gas Fee Dibutuhkan dalam Blockhain ?

1. Kompensasi untuk validator
2. Mencegah spam transaksi
3. Mengatur Prioritas Transaksi

## Perhitungan Gas Fee

Gas Fee dihitung berdasarkan 3 komponen:

1. Gas Limit: Jumlah maksimum Gas yang siap Anda bayar untuk suatu transaksi. Misalnya, transfer ETH standar membutuhkan Gas Limit 21.000 unit. Jika transaksi kompleks (seperti smart contract), Gas Limit bisa mencapai 200.000+.
2. Gas Price: Harga per unit Gas, biasanya denominasi dalam Gwei (1 ETH = 1.000.000.000 Gwei). Harga ini ditentukan oleh pengguna, tetapi validator akan memprioritaskan transaksi dengan Gas Price lebih tinggi.
3. Gas Usage: Jumlah Gas yang sebenarnya digunakan. Jika Gas Usage < Gas Limit, sisa Gas akan dikembalikan ke dompet Anda.

Rumus Gas Fee :

```markdown
Total Biaya = Gas Limit × Gas Price
Gas fee = Total Biaya / 1.000.000.000

Contoh:
Jika Gas Limit 21.000 dan Gas Price 50 Gwei,
Total Biaya = 21.000 × 50 Gwei = 1.050.000 Gwei
Gas Fee = 1.050.000 / 1.000.000.000 = 0,00105 ETH
```

## Faktor Tinggi Rendahnya Gas Fee

1. Kepadatan Jaringan
   Semakin banyak orang yang menggunakan jaringan, akan terjadi persaingan sehingga para validator akan memprioritaskan transaksi dengan Gas Price tertinggi

2. Jenis Transaksi
   Transaksi sederhana (transfer token) memakan Gas lebih sedikit dibanding smart kontrak kompleks (seperti staking di DeFi atau minting NFT).

3. Mekanisme Konsensus
   Mekanisme konsesus menentukan seberapa cepat atau seberapa murah ribuan komputer(node) bisa mencapai kesepakatan untuk mencatat sebuah transaksi. Di mana terdapat 2 alasan yang membuat konsesus mepengaruhi tiggi rendahnya Gas fee:
   - Kapasitas Transaksi
     Setiap mekanisme konsensus memiliki batas kecepatan dalam memproses transaksi per detik (TPS).
     - Proof of Work
       Sistem di mana untuk menentukan kesepakatan dari para validator, memerlukan kukuatan komputasi (_Hardware_)
     - Proof of Stake
       Sistem yang menentukan kesepakatan dilakukan oleh pemegan koin
   - Biaya opersiona node

   note: untuk jaringan Etherium sekarang menggunakan Mekanisme konsesus Proof of Stake sejak tahun 2022

## Strategi Menghemat Gas

1. Transaksi di Jam Sepi
2. Gunakan Layer 2: Layer 2 seperti Polygon, Optimism, atau Arbitrum menawarkan biaya 90-99%
   lebih murah dengan tetap terhubung ke keamanan Ethereum.
3. Atur Gas Price Manual
4. Hindari Kontrak Pintar yang Rumit
5. Pilih Blockchain Alternatif Untuk transaksi harian,

reference:

- [Matauangkripto](https://matauangkripto.id/gas-fee/)

# EVM(Etherium Virtual Mechine)

## Apaitu EVM ?

EVM (Etherium Virtual Mechine) merupakan mesin yang berjalan seperti komputer biasanya, hanya saja memiliki fungsi untuk menjalankan smart contract pada jaringan Etherium

## Bagaimana Cara Kerja EVM ?

1. Eksekusi Smart Contract
   Ketika ada transaksi menggunakan smart contract, EVM akan membaca dan mengeksekusi smart contract di semua node(komputer).

2. State Machine
   EVM akan mencatat dan memperbarui status jaringa setiap ada transaksi terjadi.

3. Gas Fee: Bahan Bakar EVM
   Setiap operasi di EVM membutuhkan gas fee, yang merupakan unit biaya komputasi. Gas ini dibayar dalam Ether (ETH)

4. Keamanan Melalui Konsensus
   EVM akan berjalan menggunakan salah satu algoritma consesus, yaitu Proof of Stake.

# Smart Contract

## Apa itu Smart Contract

Smart Contract merupakan sebuah perjanjian yang berbentuk program komputer pada blockchain
(_khususnya Etherium_), dengan tujuan untuk mengatur, mengeksekusi dan menegosiasikan
kesepakatan antara pihak-pihak yang terlibat.

## Bagaimana cara kerja Smart Contract

Pada dasarnya Smart Contract bekerja berdasarkan "_Jika, maka atau ketika_" yang ditulis menggunakan bahasa pemrograman khusus _seperti Solidity untuk Etherium_. Artinya Smart Contract
akan berjalan apabila diberi sebuah kondisi atau aturan yang kita buat, dan kemudian aturan atau kondisi tersebut harus terpenuhi agar transakinya berhasil.

# State

## Apa itu State

State(keadaan) merupakan _snapshot_ atau kondisi seluruh data di dalama pada satu titik waktu tertentu.

## Bagaimana Cara Kerja State

Blockchain bekerja dengan mengubah State A (lama) menjadi State B (baru) setiap kali ada blok baru yang divalidasi. Prosesnya mengikuti alur berikut:

1. Kondisi Awal (Current State)
   Jaringan memiliki daftar saldo dan data smart contract saat ini.

2. Input (Transactions)
   Pengguna mengirim transaksi (misal: "Kirim 2 ETH ke Budi")

3. Validasi (EVM)
   Ethereum Virtual Machine (EVM) memeriksa:
   - Apakah tanda tangan digital valid?
   - Apakah saldo pengirim cukup?
   - Apakah nonce (urutan transaksi) sudah benar?

4. Eksekusi
   Jika valid, EVM menjalankan perintah tersebut dan menghitung hasil akhirnya.

5. State Baru (Final State)
   Saldo pengirim berkurang, saldo Budi bertambah. Kondisi terbaru ini sekarang menjadi "kebenaran" yang baru bagi seluruh jaringan.

## Bagaimana State Disimpan secara Efisien? (Merkle Patricia Trie)

Blockchain tidak menyimpan seluruh database di setiap blok karena itu akan memakan ruang yang sangat besar. Sebaliknya, mereka menggunakan struktur data bernama Merkle Patricia Trie.

Cara kerjanya:

1. Semua data akun dan saldo diatur dalam struktur pohon (Tree).

2. Data-data kecil (daun pohon) digabungkan dan di-hash terus ke atas hingga menghasilkan
   satu kode unik di pucuk pohon yang disebut State Root.

3. State Root inilah yang dimasukkan ke dalam Block Header.

## Apa saja yang ada di dalam "State"?

Di jaringan seperti Ethereum, State (sering disebut World State) mencakup informasi semua akun yang ada:

1. Saldo (Balance): Berapa banyak ETH yang dimiliki setiap alamat.

2. Nonce: Jumlah transaksi yang sudah dikirim oleh alamat tersebut (untuk mencegah replay attack).

3. Smart Contract Code: Kode program yang tersimpan di dalam jaringan.

4. Storage: Data permanen yang disimpan oleh smart contract (misal: siapa pemilik NFT nomor 123,
   atau berapa sisa likuiditas di Uniswap).

## Perbedaan State vs History

Ini adalah poin yang sering membuat orang bingung:

- History (Riwayat): Adalah daftar semua blok dan transaksi yang pernah terjadi sejak blok
  pertama (Genesis). Ini bersifat permanen dan terus bertambah besar.

- State (Keadaan): Adalah hasil akhir dari semua riwayat tersebut.
  Contoh: Jika Riwayat mencatat "A kirim 5 ke B" lalu "B kirim 2 ke C", maka State hanya mencatat saldo akhir: "A punya 0, B punya 3, C punya 2".

# Immutability

## Apa itu Immutability ?

Immutability merupakan kemampuan yang dimiliki blockchain dalam mencatat secara permanen
dan memastikan data/transaksi tidak dapat diubah oleh siapapun.
