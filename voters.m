function database = voters(db,varargin)
     if nargin == 0 || mod(nargin,2)== 0
        database = db;
        return;
     end
    n = length(db)+1;
    database = db;
    for i=1:nargin/2
        if (ischar(varargin{2*i-1})|| isstring(varargin{2*i-1})) && isa(varargin{2*i},'double')&& varargin{2*i}>0
          database(n).Name = string(varargin{2*i-1});
          database(n).ID = varargin{2*i};
          n = n+1;
        else 
            database = db;
            return;
        end
    end
    
end
