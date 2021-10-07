function [train_x, train_y, test_x, test_y] = GetData()
    T = readtable('A1081 June.csv','HeaderLines',3);
    train = T(T.LocalDate==datetime(2016,6,2)|T.LocalDate==datetime(2016,6,9)|T.LocalDate==datetime(2016,6,16)|T.LocalDate==datetime(2016,6,23),{'LocalTime','TotalCarriagewayFlow'});
    test = T(T.LocalDate==datetime(2016,6,30),{'LocalTime','TotalCarriagewayFlow'});
    %train_x = datenum(train{:,'LocalTime'});
    train_x = hours(train{:,'LocalTime'});
    train_y = train{:,'TotalCarriagewayFlow'};
    %test_x = datenum(test{:,'LocalTime'});
    test_x = hours(test{:,'LocalTime'});
    test_y = test{:,'TotalCarriagewayFlow'};
end