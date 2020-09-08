function map = GetMap(m)
switch m
    case 1
        map0 = [0];
    case 2
        map0 = [0 0];
    case 4
        map0 = [1 1 0 0];
    case 8
        map0 = [1 1 0 0 1 1 0 0];
    otherwise
        error('Multiplier not 1, 2, 4, 8')
end
map1 = 1-map0;
map = [map0; map1];
end