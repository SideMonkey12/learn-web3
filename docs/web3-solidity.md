# Solidity

Solidity merupakan bahasa pemrograman yang khusus digunakan untuk membuat
smartcontract pada jaringan Etherium. Solidity ini adalah bahasa _statically typed language_,
maksudnya adalah jenis tipe data masing-masing variabel harus ditentukan.

# Tipe Data

## UINT

**int** / **uint** merupakan tipe data yang digunakan untuk medeklarasi _Signed & Unsigned_ bilangan bulat

```solidity
pragma solidity ^0.5.0;

contract TypeInteger {
   int a = 20;
   uint b = 30;
}
```

## String

Solidity mendukung literal String menggunakan tanda kutip ganda (") dan tanda kutip tunggal (').
Solidity menyediakan string sebagai tipe data untuk mendeklarasikan variabel bertipe String.

```solidity
pragma solidity ^0.5.0;

contract TypeString {
   string text = "Hello World";
}
```

## Boolean

Jenis data ini hanya menerima dua nilai: Benar atau Salah.

```solidity
pragma solidity ^0.5.0;

contract TypeBool {
   bool boolean = true;
}
```

## Address

Alamat dari Ethereum yang memiliki panjang 20 byte. Tipe data Alamat dapat digunakan untuk mendapatkan saldo atau untuk mentransfer saldo.

```solidity
pragma solidity ^0.5.0;

contract TypeAddress {
    address x = 0x212;
    address myAddress = this;
    if (x.balance < 10 && myAddress.balance >= 10) x.transfer(10);
}
```

# Visiblity

## Public

Memperbolehkan _function_ atau _state_ untuk diakses secara global,
tidak hanya dari dalam smartcontract, tetapi juga dari luar dan bahkan dari kontrak lain yang mungkin berasal dari kontrak kita.

contoh : Bayangkan sebuah kontrak pemungutan suara di mana setiap orang perlu melihat total suara.

```solidity
contract Voting {
   uint public totalVotes;

   function vote() public [
      totalVotes++;
   ]
}
```

## private

membatasi hak ases dari _function_ atau _state_ agar kontrak dari luar tidak bisa melihat dan menggunakannya.

contoh : Think of a bank contract that needs to keep its balance hidden

```solidity
contract BankAccount {
    uint private balance = 0;

    function updateBalance(uint _amount) private {
        balance += _amount;
    }
}
```

## Internal

memperbolehkan contract dan turunannya dapat mengakses dan melindungi _function_ atau _state_
dari akases luar beserta turunannya.

contoh: Berikut adalah kontrak dasar yang hanya mengizinkan kontrak turunan untuk menambah jumlah.

```solidity
contract BaseContract {
    uint internal itemCount;

    function incrementCount() internal {
        itemCount++;
    }
}

contract ChildContract extends BaseContract {
    function incrementExternally() public {
        incrementCount();
    }
}
```

# Pure vs View

## View

View function adalah fungsi yang membaca _state_ pada blockchain tetapi tidak dapat memodifikasinya.
Ini berarti mereka dapat mengakses dan mengembalikan nilai yang tersimpan dalam variabel,
tetapi tidak dapat melakukan perubahan apa pun pada variabel-variabelnya.
Karena view function tidak mengubah status blockchain, mereka tidak mengkonsumsi gas saat dipanggil secara eksternal.

```solidity
contract ViewContract {
    uint public data;

    constructor(uint _data) {
        data = _data;
    }

    // View function untuk membaca data
    function getData() public view returns (uint) {
        return data;
    }
}
```

## Pure

Pure merupakan sebuah _function_ yang tidak digunakan untuk membaca _state_,
namun digunakan untuk operasi matematika atau komputasi berdasarkan input yang diberikan tanpa berinteraksi
dengan variabel _state_.

```solidity
contract PureContract {

    // Pure function untuk menunjukkan pemjumlahan sederhana
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
```

## Perbedaan View & Pure

1. Interaksi state
   - View: Dapat membaca variabel _state_ blockchain tetapi tidak dapat memodifikasinya.
   - Pure: Tidak dapat membaca atau memodifikasi variabel _state_. Mereka hanya menggunakan parameter inputnya untuk melakukan perhitungan.

2. Konsumsi Gas
   Baik view maupun pure tidak mengonsumsi gas saat dipanggil secara eksternal (off-chain).
   Namun, jika dipanggil oleh fungsi on-chain lain, maka akan mengonsumsi gas.

## Kapan Penggunaan View & Pure

- View
  Ketika perlu mengambil data dari _state_ kontrak. Ini umum terjadi pada fungsi getter di mana _state_ blockchain tanpa melakukan perubahan apa pun.
  contoh: Mengambil saldo rekening, mendapatkan status terkini suatu kontrak, dll.

- Pure
  Ketika perlu melakukan operasi yang tidak memerlukan interaksi apa pun dengan _state_ kontrak,
  fungsi murni ideal untuk fungsi pembantu yang hanya bergantung pada parameter input.
  contoh: operasi matematika, manipulasi string, dll.
