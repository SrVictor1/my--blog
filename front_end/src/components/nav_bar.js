import style from "./styles/nav_bar.module.css";

function HeaderBar() {
  const header_bar = [{ name: "Novo Post", link: "#" }];

  return (
    <nav className={style.navbar}>
      <div>
        <a href="#">
          <h1 className="text-1xl font-bold">Logo</h1>
        </a>
      </div>
      <ul className="flex  space-x-4">
        {header_bar.map((iten) => (
          <li
            className="py-1 text-sm text-gray-600 font-semibold rounded-md border border-gray-200 hover:text-white hover:bg-gray-600 hover:border-transparent focus:outline-none focus:ring-2 focus:ring-gray-600 focus:ring-offset-2"
            key={iten.name}
          >
            <a href={iten.link} className="px-4 py-3">
              {iten.name}
            </a>
          </li>
        ))}
        <div className="bg-gray-600 top-px"></div>
      </ul>
    </nav>
  );
}

export default HeaderBar;
