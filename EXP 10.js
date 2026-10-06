test> use library
switched to db library
library> db.authors.insertMany([{"authorID":1,"firstName":"jeeva","lastName":"raj"},{"authorID":2,"firstName":"bhavan","lastName":"gowtham"},{"authorID":3,"firstName":"aldous","lastName":"jeevanantham"}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a91d5bc3148adbf4f79f242'),
    '1': ObjectId('6a91d5bc3148adbf4f79f243'),
    '2': ObjectId('6a91d5bc3148adbf4f79f244')
  }
}
library> db.authors.find().pretty()
[
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f242'),
    authorID: 1,
    firstName: 'jeeva',
    lastName: 'raj'
  },
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f243'),
    authorID: 2,
    firstName: 'bhavan',
    lastName: 'gowtham'
  },
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f244'),
    authorID: 3,
    firstName: 'aldous',
    lastName: 'jeevanantham'
  }
]
library> db.book.insertMany([{"bookID":1,"title":"1984","genre":"dolpin","publicationYear":1949,"authors":[1]},{"bookID":2,"title":"new world","genre":"tiger","publicationYear":1932,"authors":[2]},{"bookID":3,"title":"jackspparow","genre":"fantacy",publicationYear":1997,"authors":[3]}])
  {
    acknowledged: true,
    insertedIds: {
      '0':ObjectId('6a91d8163148adbf4f79f245'),
      '1':ObjectId('6a91d8163148adbf4f79f246'),
      '2':ObjectId('6a91d8163148adbf4f79f247')
  }
}   
library> db.book.find().pretty()
[
  {
    _id: ObjectId('6a91d8163148adbf4f79f245'),
    bookID: 1,
    title: '1984',
    genre: 'dolpin',
    publicationYear: 1949,
    authors: [ 1 ]
  },
  {
    _id: ObjectId('6a91d8163148adbf4f79f246'),
    bookID: 2,
    title: 'new world',
    genre: 'tiger',
    publicationYear: 1932,
    authors: [ 2 ]
  },
  {
    _id: ObjectId('6a91d8163148adbf4f79f247'),
    bookID: 3,
    title: 'jackspparow',
    genre: 'fantacy',
    publicationYear: 1997,
    authors: [ 3 ]
  }
]
library> db.borrower.insertMany([{"borrowerID":1,"firstName":"jon","lastName":"joe","membershipDate":new Date("2023-01-01")},{"borrowerID":2,"firstName":"jeeva","lastName":"jd","membershipDate":new Date("2023-02-15")}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a91db443148adbf4f79f248'),
    '1': ObjectId('6a91db443148adbf4f79f249')
  }
}
library> db.borrower.find().pretty()
[
  {
    _id: ObjectId('6a91db443148adbf4f79f248'),
    borrowerID: 1,
    firstName: 'jon',
    lastName: 'joe',
    membershipDate: ISODate('2023-01-01T00:00:00.000Z')
  },
  {
    _id: ObjectId('6a91db443148adbf4f79f249'),
    borrowerID: 2,
    firstName: 'jeeva',
    lastName: 'jd',
    membershipDate: ISODate('2023-02-15T00:00:00.000Z')
  }
]
library> db.borrowedBook.insertMany([{"borrowerID":1,"boodID":1,"borrowedDate":new Date("2023-03-01"),"returnDate":new Date("2023-03-15")},{"borrowerID":2,"bookID":3,"borrowedDate":new Date("2023-03-05"),"returnDate":new Date("2023-03-20")}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('6a91dca03148adbf4f79f24a'),
    '1': ObjectId('6a91dca03148adbf4f79f24b')
  }
}
library> db.borrowedBook.find().pretty()
[
  {
    _id: ObjectId('6a91dca03148adbf4f79f24a'),
    borrowerID: 1,
    boodID: 1,
    borrowedDate: ISODate('2023-03-01T00:00:00.000Z'),
    returnDate: ISODate('2023-03-15T00:00:00.000Z')
  },
  {
    _id: ObjectId('6a91dca03148adbf4f79f24b'),
    borrowerID: 2,
    bookID: 3,
    borrowedDate: ISODate('2023-03-05T00:00:00.000Z'),
    returnDate: ISODate('2023-03-20T00:00:00.000Z')
  }
]
library> db.authors.updateOne({"authorID":1},{$set:{"lastName":"joeee"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
library> db.authors.find().pretty()
[
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f242'),
    authorID: 1,
    firstName: 'jeeva',
    lastName: 'joeee'
  },
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f243'),
    authorID: 2,
    firstName: 'bhavan',
    lastName: 'gowtham'
  },
  {
    _id: ObjectId('6a91d5bc3148adbf4f79f244'),
    authorID: 3,
    firstName: 'aldous',
    lastName: 'jeevanantham'
  }
]
library>db.book.deleteOne({"bookID":3})
{ 
  acknowledged: true, deletedCount: 1 }
library> db.book.find().pretty()
[
  {
    _id: ObjectId('6a91d8163148adbf4f79f245'),
    bookID: 1,
    title: '1984',
    genre: 'dolpin',
    publicationYear: 1949,
    authors: [ 1 ]
  },
  {
    _id: ObjectId('6a91d8163148adbf4f79f246'),
    bookID: 2,
    title: 'new world',
    genre: 'tiger',
    publicationYear: 1932,
    authors: [ 2 ]
  }
]S