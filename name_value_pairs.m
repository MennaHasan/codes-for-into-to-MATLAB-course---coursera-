function db = name_value_pairs(varargin)
    if nargin == 0 || mod(nargin,2)~= 0
        db = {};
        return;
    end
    db = cell(nargin/2,2);
    for i=1:nargin/2
        if ischar(varargin{2*i-1})
          db{i,1} = varargin{2*i-1};
          db{i,2} = varargin{2*i};
        else 
            db = {};
            return;
        end
    end


end