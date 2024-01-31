## Requirement
- NodeJS ^18.xx
- Mysql

## Cara menjalankan proyek
- Clone project ini
- Buat file `.env` berdasarkan file `.env.example`
- Sesuaikan isi file `.env` dengan konfigurasi database yang Anda punya
- Jalankan migration database `npm i`
- Jalankan migration database `npm run migrate-up`
- Jalankan `npm run start-server` atau `npm run start-server:dev`(untuk development)
- Jika ingin mengedit file html jalankan `npm run tailwind` agar tailwind bisa dibuild
