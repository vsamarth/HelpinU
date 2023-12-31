import Filters from "./Filters";
import Listings from "./Listings";
import Search from "./Search";
export default function Home() {
  return (
    <div className="container mx-auto mt-12">
      <aside
        id="sidebar-multi-level-sidebar"
        className="bg-gray-100 fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0"
        aria-label="Sidebar"
      >
        <div className="px-7 py-2  mx-auto w-full text-xl font-semibold ">
          Filters
        </div>
        <Filters />
      </aside>

      <div className="p-0 sm:ml-64">
        <div className=" px-4 py-3 pt-40 mb-10 border border-red-600  bg-red-600 relative">
          <div className="absolute w-full flex justify-center"><Search /></div>
        </div>
        
        <Listings />
        
        
      </div>
    </div>
  );
}
