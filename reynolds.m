% Initial Data:
velocity = 0.08099022;
u_velocity = 0.0005603;

length = 0.004;
u_length = 0.002;

density = 1253.655;
u_density = 1.325;

viscosity = 605.58;
u_viscosity = 57.58;

% Mins and Maxes:
max_velocity = velocity + u_velocity;
min_velocity = velocity - u_velocity;
velocities = [max_velocity, min_velocity];

max_length = length + u_length;
min_length = length - u_length;
lengths = [max_length, min_length];

max_density = density + u_density;
min_density = density - u_density;
densities = [max_density, min_density];

max_viscosity = viscosity + u_viscosity;
min_viscosity = viscosity - u_viscosity;
viscosities  = [max_viscosity, min_viscosity];

% Calculations:

results = [];

for i = 1:2
    chosen_velocity = velocities(i);
    for j = 1:2
        chosen_length = lengths(j);
        for k = 1:2
            chosen_density = densities(k);
            for l = 1:2
                chosen_viscosity = viscosities(l);
                result = (chosen_velocity * chosen_length * chosen_density) / chosen_viscosity;
                results(end + 1) = result;
            end
        end
    end
end

% Displays all possible results:
disp(results);

% Displays the maximum and minimum results:
disp(['The biggest reached value is: ' num2str(max(results))]);
disp(['The smallest reached value is: ' num2str(min(results))]);
