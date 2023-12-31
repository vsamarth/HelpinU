function Filters() {
    return (
      <div>
      
        <div className = "px-3 py-3" >
          <h3 className=" py-3 font-semibold tracking-tight">Interests</h3>
          <div>
            {instructions.map((instruction) => (
              <div className="flex items-center gap-4">
                <input type="checkbox" className="border-red-500" />
                <label>{instruction}</label>
              </div>
            ))}
          </div>
        </div>    
        <div className = "px-3" >
          <h3 className="py-3 font-semibold tracking-tight">Location</h3>
          <input
            className="h-11 py-3 px-4 border rounded-lg placeholder:text-gray-300 placeholder:font-light"
            placeholder="Organization, tags, ..."
          />
        </div>
        </div>
      
    );
  }
  
  function SearchBox() {
  
  }
  
  const instructions = ["Environmentalism","Poverty", "Alleviation","Education","Healthcare","Racial justice","Gender equality","Women's rights", "LGBTQ+ rights","Disability rights", "Animal welfare","Mental health"," Community development"," Humanitarian aid", "Peacebuilding","Indigenous rights","Cultural preservation"," Youth empowerment"];
  
  export default Filters;
  