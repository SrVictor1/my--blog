import client from "../services/api";
import { ApolloProvider } from "@apollo/react-hooks";
import Posts from "../services/get_posts";

function Body() {
  return (
    <>
      <div className="styles">
        <ApolloProvider client={client}>
          <Posts />
        </ApolloProvider>
      </div>
    </>
  );
}

export default Body;
