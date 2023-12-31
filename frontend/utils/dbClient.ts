'use server';
const { MongoClient, ServerApiVersion } = require("mongodb");

const uri =
  "mongodb+srv://master:simps@hackathon.0vbeskl.mongodb.net/?retryWrites=true&w=majority";

async function getClient() {
  const client = new MongoClient(uri, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    serverApi: ServerApiVersion.v1,
  });
  await client.connect();
  console.log("Connected to database");

  return client.db("helping");
}

export default getClient;
