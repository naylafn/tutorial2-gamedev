# Tutorial 2 - Game Development
## Nayla Farah Nida [2306213426]

<details>
<summary>Latihan: Playtest</summary>
1. Apa saja pesan log yang dicetak pada panel Output?

Panel output menunjukkan pesan awal ```Platform initialized``` dan pesan ```Reached objective!``` saat pesawat bergerak ke atas hampir menyentuh batas atas area permainan.

2.Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output? <br>

Panel output menunjukkan pesan ```Reached objective!``` lagi saat pesawat berada di batas atas area permainan.

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?<br>

Ya, pada node ```ObjejtiveArea``` terdapat signal Area2D ```bernama body_entered(body: Node2D)``` dengan receiver method yaitu ```_on_ObjectiveArea_body_entered(body: RigidBody2D)```, di mana jika node/objek pesawat (BlueShip) masuk ke dalam area, panel akan mengeluarkan output “Reached Objective”.

</details>

<details>
<summary>Latihan: Memanipulasi Node dan Scene</summary>
  
1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D? <br>

Sprite2D merupakan node yang menampilkan tekstur 2D dalam suatu scene. Node ini mewarisi properti dari Node2D, yang berarti ia memiliki koordinat posisi (x, y), rotasi, dan skala di ruang dua dimensi. ```Inherits: Node2D < CanvasItem < Node < Object```

Fungsi utama Sprite2D:
- Merender file gambar (.png atau .webp) ke dalam game.
- Mengubah ukuran (scale), memutar (rotate), atau menggeser posisi gambar tanpa mengubah file aslinya.
- Melalui properti modulate, mengubah warna gambar atau mengatur tingkat transparansinya (Alpha) secara langsung di editor atau via script.
- Sprite2D mendukung spritesheet, di mana kita bisa memotong gambar besar menjadi kotak-kotak kecil (menggunakan properti Animation) dan berganti antar frame untuk menciptakan animasi berjalan, melompat, atau menyerang.

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

Perbedaan utama antara RigidBody2D dan StaticBody2D terletak pada bagaimana mereka berinteraksi dengan sistem fisika (physics engine).

```StaticBody2D```: Node yang digunakan untuk objek yang tidak bergerak atau objek yang tidak terpengaruh oleh gaya fisika seperti gravitasi atau dorongan dari objek lain. 

```RigidBody2D```:Node yang dikontrol sepenuhnya oleh mesin fisika Godot, dan tidak bisa digerakkan dengan mengubah posisi (x, y) secara langsung. 

3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Ketika nilai Mass sangat kecil (0.01 Kg), sedikit dorongan dengan StonePlatform menyebabkan BlueShip terpental lebih tinggi dibandingkan sebelumnya saat nilai Mass 10 Kg. Sebaliknya ketika nilai Mass sangat besar (10000 Kg), BlueShip terasa berat dan terpental sedikit.

4. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

```StonePlatform``` menembus ```BlueShip```, karena bentuk collision-nya tidak lagi diproses oleh physics engine. Artinya, engine tidak menghitung kontak, tidak mendeteksi tabrakan, 
dan tidak menghasilkan respons fisika terhadap node tersebut.

5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

```Position```: Mengubah posisi node BlueShip di layar berdasarkan koordinat (x, y).

```Rotation```: Mengubah sudut putaran node terhadap titik pivot sehingga objek akan berputar searah atau berlawanan arah jarum jam.

```Scale```: Mengubah ukuran node pada sumbu X dan Y. 
Nilai lebih dari 1 memperbesar objek, nilai antara 0 dan 1 memperkecil, dan nilai negatif akan membalik objek pada sumbu tersebut.

6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Karena kedua node tersebut merupakan child dari ```PlatformBlue```, sehingga nilai koordinatnya dihitung menggunakan local coordinate milik parent-nya, 
bukan koordinat global scene. Meski angka ```Position``` berbeda di Inspector, secara visual posisinya tetap benar dalam keseluruhan scene karena mengikuti transform dari ```PlatformBlue```.
</details>

Referensi:
[https://docs.godotengine.org/en/4.5/classes/](https://docs.godotengine.org/en/4.5/classes/)
