function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    
    % Initialize variable 
    nNodes = size(pheromoneLevel,1);
    nodesList = zeros(1,nNodes)+1; % visitedNode = 0
    tabuList = zeros(1,nNodes); %ie path

    currentNode = fix(rand*nNodes)+1;
    currentIndex = 1;
    tabuList(currentIndex) = currentNode;
    nodesList(currentNode) = 0;
    
    while(~all(nodesList == 0))
        nextNode = GetNode(tabuList,nodesList,pheromoneLevel,visibility,alpha,beta);
        
        % Update list info
        currentIndex = currentIndex + 1;
        tabuList(currentIndex) = nextNode;
        nodesList(nextNode) = 0;

    end
    
    path = tabuList;

end