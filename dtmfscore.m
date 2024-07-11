


function sc = dtmfscore(xx, hh)
    xx = xx*(2/max(abs(xx))); %--Scale the input x[n] to the range [-2,+2].
    yn = conv(xx, hh);
    max_y = max(abs(yn));

    if (max_y >= 0.59)
        sc = 1;
    else
        sc = 0;
    end
end