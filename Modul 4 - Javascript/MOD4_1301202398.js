// let variable1
// let variable2 = "Muhamad Fachri Haikal"
// let variable3 = 1301202398
// let variable4 = false
// let variable5 = [1, 2, 3]
// let variable6 = null

// console.log(variable1)
// console.log(variable2)
// console.log(variable3)
// console.log(variable4)
// console.log(variable5)
// console.log(variable6)

// let arr1d = [1, 2, 3]
// let arr2d = [[1,2], [3, 4], [5, 6]]
// console.log("arr1d: ", arr1d)
// console.log("arr2d: ", arr2d)

// console.log("Index ke-2 dari arr1d: ", arr1d[2])
// console.log("Index ke-100 dari arr1d", arr1d[100])

// console.log("Index ke-1 dari arr2d: ", arr2d[1])
// console.log("Akses value index ke-0 pada elemen array index ke-1: ", arr2d[1][0])

// let arr1d = [1, 2, 3]
// console.log("lenght arr1d awal: ", arr1d.length)
// console.log("arr1d: ", arr1d)
// arr1d.push(4)
// console.log("lenght arr1d after push: ", arr1d.length)
// console.log("arr1d: ", arr1d)
// arr1d.pop()
// console.log("lenght arr1d after pop: ", arr1d.length)
// console.log("arr1d: ", arr1d)

// let batas = 10
// for (let i = 0; i <= 10; i++){
//     if (i % 2 === 0){
//         console.log(i, " adalah genap")
//     }else{
//         console.log(i, " adalah ganjil")
//     } 
// }

// class Mahasiswa {
//     constructor(name, nim){
//         this.name = name
//         this.nim = nim
//     }

//     setName(name) {
//         this.name = name
//     }

//     setNIM(nim){
//         this.nim = nim
//     }

//     getName(){
//         return this.name
//     }

//     getNIM(){
//         return this.nim
//     }
// }

// let mhs = new Mahasiswa("Muhamad Fachri Haikal", "1301202398")
// console.log("Objek Mahasiswa: ", mhs)

// mhs.setName("Haikal")
// console.log("Objek Mahasiswa setelah di set name: ", mhs)

// let Mahasiswa = {
//     nama : "Muhamad Fachri Haikal",
//     nim : "1301202398",
//     gpa : 4.00,
//     daftarMk : {
//         smt1 : ["logmat", "kalkulus", "pengpro"],
//         smt2 : ["alpro", "kalkulus lanjut", "basis data"]
//     }
// }
// // console.log("Objek Mahasiswa: ", Mahasiswa)

// Mahasiswa.nama = "Haikal Fachri"
// Mahasiswa.daftarMk.smt1.push("pendidikan pancasila")
// console.log("Objek Mahasiswa: ", Mahasiswa)

// let Mahasiswa2 = Object.create(Mahasiswa)
// console.log("Objek Mahasiwa2: ", Mahasiswa2)

// console.log("Akses nama dari Mahasiswa: ", Mahasiswa.nama)
// console.log("Akses nim dari Mahasiswa: ", Mahasiswa["nim"])

// console.log("Akses property alamat yang tidak ada dari Mahasiswa: ", Mahasiswa.alamat)

// Function Declaration
function multiplyBy5(x){
    let result = x * 5
    return result
}
// Function Expression
let result = function(x){
    let result = x * 5
    return result
}

console.log("Hasil dari function declaration: ", multiplyBy5(2))
console.log("Hasil dari function expression: ", result(2))










