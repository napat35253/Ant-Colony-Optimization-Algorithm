function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
    
    nNodes = size(pathCollection,2);
    deltaPheromoneLevel = zeros(nNodes);
    
    % loop through ants
    for k = 1:nNodes
        distanceLength = pathLengthCollection(k,1);
        for i = 1:nNodes
            if i == nNodes
                startNode = pathCollection(k,i);
                endNode = pathCollection(k,1);
            else
                startNode = pathCollection(k,i);
                endNode = pathCollection(k,i+1);
            end
            deltaPheromoneLevel(startNode,endNode) = deltaPheromoneLevel(startNode,endNode) + (1/distanceLength);
        end
    end

end

