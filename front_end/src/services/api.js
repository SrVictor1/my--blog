import ApolloClient from "apollo-boost";

const client = new ApolloClient({
  uri: "http://172.22.0.3:4000/api/graphiql",
});

export default client;
