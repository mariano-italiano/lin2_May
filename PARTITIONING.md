## Proces partycjonowania

1. Dodanie fizycznych dysków/lunów/zasobów sieciowych.
2. Tworzymy LVM !!!!! bezpośrdenio na urządzeniu jeśli możliwe (`pvcreate /dev/sdb`).
3. Tworzymy/rozszerzamy volume groupę (`vgcreate` / `vgextend`).
4. Tworzymy/rozszerzamy logiczny volumen (`lvcreate` / `lvextend`).
5. Tworzymy filesystem (`mkfs.xyz` / `mkfs -t xyz`)
6. Tworzymy mountpoint (czyli folder montowania zasobów dyskowych).
7. Montujemy zasób (`mount <device> <mountpoint`).
8. Edytujemy i dodajemy wpis do `/etc/fstab` !!!
