function result = mse(y,y_pred)
    result = mean((y-y_pred).^2);
end