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

Solidity mendukung literal String menggunakan tanda kutip ganda (") dan tanda kutip tunggal ('). Solidity menyediakan string sebagai tipe data untuk mendeklarasikan variabel bertipe String.

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
