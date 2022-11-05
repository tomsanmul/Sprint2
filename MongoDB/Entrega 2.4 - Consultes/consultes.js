db.restaurants.find();
db.restaurants.find({},{"restaurant_id":1,"name":1,"borough":1,"cuisine":1});
db.restaurants.find({},{"restaurant_id":1,"name":1,"borough":1,"cuisine":1,"_id":0})
db.restaurants.find({},{"restaurant_id":1,"name":1,"borough":1,"address.zipcode":1,"_id":0});
db.restaurants.find({"borough":"Bronx"});
db.restaurants.find({"borough":"Bronx"}).limit(5);
db.restaurants.find({"borough":"Bronx"}).skip(5).limit(5);
db.restaurants.find({"grades.score": {$gt:90}});
db.restaurants.find({"grades.score": {$gt:80, $lte:100}});
db.restaurants.find({"address.coord.1":{$lt: -95.754168}});
db.restaurants.find({$and: [{"cuisine": {$ne: "American "}}, {"grades.score": {$gt:70}}, {"address.coord.0":{$lt: -65.754168}}]});
db.restaurants.find({"cuisine": {$ne: "American "}, "grades.score": {$gt:70}, "address.coord.0":{$lt: -65.754168}});
db.restaurants.find({$and: [{"cuisine": {$ne: "American "}}, {"grades.grade":"A"}, {"borough": {$ne: "Brooklyn"}}]}).sort({"cuisine": -1});
db.restaurants.find({"name": {$regex: /^Wil/}},{"restaurant_id":1, "name":1, "borough":1, "cuisine":1, "_id":0});
db.restaurants.find({"name": {$regex: /ces$/}},{"restaurant_id":1, "name":1, "borough":1, "cuisine":1, "_id":0});
db.restaurants.find({"name": {$regex: /Reg/i}},{"restaurant_id":1, "name":1, "borough":1, "cuisine":1, "_id":0});
db.restaurants.find({ $or: [ {cuisine: "American "}, {cuisine: "Chinese" }], $and: [ {borough: "Bronx" }] })
db.restaurants.find({ $or: [ {borough: "Staten Island"}, {borough: "Queens"}, {borough: "Bronx"}, {borough: "Brooklyn"} ] }, {"restaurant_id":1, "name":1, "borough":1, "cuisine":1, "_id":0})
db.restaurants.find({ $and: [{borough: {$ne: "Staten Island"}}, {borough: {$ne: "Queens"}}, {borough: {$ne: "Bronx"}}, {borough: {$ne: "Brooklyn" }}]}, {restaurant_id:1,name:1, borough:1, cuisine:1, _id:0})
db.restaurants.find({"grades.score": {$lt:10}}, {restaurant_id:1,name:1, borough:1, cuisine:1, _id:0})
db.restaurants.find({ $or: [{cuisine: "Seafood"}, {cuisine: {$ne: "American "}}, {cuisine: {$ne: "Chinese"}}, {name: /^Wil/} ]}, {restaurant_id:1,name:1, borough:1, cuisine:1, _id:0})
db.restaurants.find({ $and: [{"grades.grade": "A"}, {"grades.score": 11}, {"grades.date": ISODate("2014-08-11T00:00:00Z")}]} , {restaurant_id:1,name:1,grades:1, _id:0});
db.restaurants.find({ $and: [{"grades.grade": "A"}, {"grades.score": 9}, {"grades.date": ISODate("2014-08-11T00:00:00Z")}]}, {restaurant_id:1,name:1, grades:1, _id:0});
db.restaurants.find({"address.coord.1": {$gt: 42, $lt: 52}}, {restaurant_id:1, name:1, address:1, coord:1, _id:0});
db.restaurants.find().sort({name: 1});
db.restaurants.find().sort({name: -1});
db.restaurants.find().sort({cuisine: 1, borough: -1});
db.restaurants.find({ "address.street": { "$in": [ null, "" ] } });
db.restaurants.find({"address.coord": {$type: "double"}});
db.restaurants.find({"grades.score": {$mod:[7,0]}}, {restaurant_id:1, name:1, grade:1, _id:0});
db.restaurants.find({"name": {$regex: /mon/i}}, {name:1, borough:1, "address.coord":1, cuisine:1, _id:0});
db.restaurants.find({"name": {$regex: /^Mad/}}, {name:1, borough:1, "address.coord":1, cuisine:1, _id:0});