function disconnect(dev)
%% Disconnect and Clean Up

% Disconnect from instrument object, obj1.
fclose(dev);
end