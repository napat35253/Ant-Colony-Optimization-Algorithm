function pathLength = GetPathLength(path,cityLocation)
    pathLength = 0;
    for i = 1:size(path,2)
        if(i == size(path,2))
            startNode = path(i);
            endNode = path(1);
        else
            startNode = path(i);
            endNode = path(i+1);
        end
        distanceX = cityLocation(endNode,1) - cityLocation(startNode,1);
        distanceY = cityLocation(endNode,2) - cityLocation(startNode,2);
        pathLength = pathLength + sqrt(distanceY^2+distanceX^2);
    end
end

