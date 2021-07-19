import { useQuery } from "@apollo/react-hooks";
import { GET_POSTS_QUERY } from "./query";

function Posts() {
  const { data, loading, error } = useQuery(GET_POSTS_QUERY);

  const posts = data?.getAllPosts;
  if (loading) return <p>Almost there...</p>;
  if (error) return <p>{error.message}</p>;

  return (
    <>
      <ul>
        {posts.map((post) => (
          <li key={post.id}>
            <p>{post.id}</p>
            <p>{post.titulo}</p>
          </li>
        ))}
      </ul>
    </>
  );
}

export default Posts;
