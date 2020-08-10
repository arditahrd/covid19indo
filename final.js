//require
var request = require('request');
const fetch = require("node-fetch");
const NodeGeocoder = require('node-geocoder');
const fs = require('fs');

const {
    Pool,
    Client
} = require("pg");

//connection
const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "covid19malay",
    password: "password",
    port: "5432"
});


function inputData(id, prov, positive, cured, death) {
    pool.query(
        "INSERT INTO data_indo VALUES('" + id + "','" + prov + "', '" + positive + "', '" + cured + "', '" + death + "')",
        (err, res) => {
            console.log(err, res);
            //console.log('data ' + id + ' berhasil disimpan');
        }
    );
}

function updateData(id, prov, positive, cured, death) {
    pool.query(
        "UPDATE data_indo SET Province= '" + prov + "',Positive = '" + positive + "',Cured = '" + cured + "',Death= '" + death + "' where ID = '" + id + "'",
        (err, res) => {
            console.log('data ' + id + ' telah berhasil diubah');
        }
    );
}

var first= true;

function fetchData() {

    var interval = setInterval(function () {
        request('https://services5.arcgis.com/VS6HdKS0VfIhv8Ct/arcgis/rest/services/COVID19_Indonesia_per_Provinsi/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json',
            function (error, response, body) {
                if (!error && response.statusCode == 200) {

                    var data = JSON.parse(body);
                    //console.log(data);
                    var total = data.features.length;
//                    console.log(total);


                    const mapOptions = {
                        provider: 'google',
                        apiKey: 'AIzaSyBRAnJsQlQEKOgsCNfp_bmBKWsBbN1fEu0',
                        formatter: null,
                    };

                    for (var n = 0; n < total-1; n++) {
                        var id = data.features[n].attributes.FID;
                        var prov = data.features[n].attributes.Provinsi;
                        var kasus_pos = data.features[n].attributes.Kasus_Posi;
                        var kasus_semb = data.features[n].attributes.Kasus_Semb;
                        var kasus_meni = data.features[n].attributes.Kasus_Meni;

                        (first == true) ? inputData(id, prov, kasus_pos, kasus_semb, kasus_meni) : updateData(id, prov, kasus_pos, kasus_semb, kasus_meni) ; 
//                        jumlah_case += kasus;
                        //console.log(id + ' ' + kode + ' ' + prov);
                   
                    }

                    first = false;
                    /*
                        //get location  


                        let address = []; 
                        const geocoder = NodeGeocoder(mapOptions);

                    } */
                }
            }, 7 * 1000);
    });
}


fetchData();