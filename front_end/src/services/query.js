import { gql } from "graphql-tag";

export const GET_POSTS_QUERY = gql`
  query {
    getAllPosts {
      titulo
      id
    }
  }
`;

export default GET_POSTS_QUERY;
