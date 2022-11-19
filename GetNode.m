function nextNode = GetNode(tabuList,nodesList,pheromoneLevel,visibility,alpha,beta)
    
    %init
    nNodes = size(tabuList,2);
    currentNode = tabuList(min(find(tabuList == 0)) - 1);
    probability = zeros(1,nNodes);
    normalizer = 0;

    for j = 1:nNodes
        % calculate only on the unvisited node
        if(nodesList(j)~=0)
            tau = pheromoneLevel(currentNode,j)^alpha;
            n = visibility(currentNode,j)^beta;
            result = tau*n;
            probability(j) = result;
            normalizer = normalizer + result;
        end
    end

    probability = probability/normalizer;

    r = rand();
    currentProb = 0;
    for i = 1:nNodes
        currentProb = currentProb + probability(i);
        if r <= currentProb && nodesList(i)~=0
            nextNode = i;
            return
        end
    end

end

