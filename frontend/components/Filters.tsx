function Filters() {
  return (
    <div className="border rounded-lg w-80 p-8 flex flex-col gap-6">
      <div className="space-y-2">
        <h3 className="font-semibold tracking-tight">Filter</h3>
        <input
          className="h-11 py-2 px-4 border rounded-lg placeholder:text-gray-300 placeholder:font-light"
          placeholder="Organization, tags, ..."
        />
      </div>
      <div className="space-y-2">
        <h3 className="font-semibold tracking-tight">Interests</h3>
        <div>
          {instructions.map((instruction) => (
            <div className="flex items-center gap-4">
              <input type="checkbox" className="border-red-500" />
              <label>{instruction}</label>
            </div>
          ))}
        </div>
      </div>    
      <div className="space-y-2">
        <h3 className="font-semibold tracking-tight">Location</h3>
        <input
          className="h-11 py-2 px-4 border rounded-lg placeholder:text-gray-300 placeholder:font-light"
          placeholder="Organization, tags, ..."
        />
      </div>
    </div>
  );
}

function SearchBox() {

}

const instructions = ["Education", "Environment"];

export default Filters;
