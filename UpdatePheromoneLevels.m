function pheromoneLevel = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)
    pheromoneLevel = pheromoneLevel*(1-rho)+deltaPheromoneLevel;
    % make sure pheromoneLevel never drops under 10^-15
    pheromoneThreshold = 10^-15;
    pheromoneLevel(pheromoneLevel < pheromoneThreshold) = pheromoneThreshold;
end

