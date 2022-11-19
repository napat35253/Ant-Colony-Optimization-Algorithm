function visibility = GetVisibility(cityLocation)
    numberOfCities = size(cityLocation,1);
    visibility = zeros(numberOfCities);
    for i = 1:numberOfCities
        for j = 1:numberOfCities
            if(i ~= j)
                distanceX = cityLocation(i,1) - cityLocation(j,1);
                distanceY = cityLocation(i,2) - cityLocation(j,2);
                visibility(i,j) = 1/(sqrt(distanceX^2+distanceY^2));
            end
        end
    end
end