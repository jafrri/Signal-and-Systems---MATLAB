function lst = dtmfrun(xx,L,fs)
dtmf.keys = ...
['1','2','3','A';
'4','5','6','B';
'7','8','9','C';
'*','0','#','D'];
dtmf.colTones = ones(4,1)*[1209,1336,1477,1633];
dtmf.rowTones = [697;770;852;941]*ones(1,4)
center_freqs = [697, 770, 852, 941, 1209, 1336, 1477, 1633];
hh = dtmfdesign( center_freqs,L,fs );
[nstart,nstop] = dtmfcut(xx,fs);
lst = [];
for kk=1:length(nstart) 
x_seg = xx(nstart(kk):nstop(kk));
    key_scores = [];
    for index = 1: 8
        key_scores = [key_scores, dtmfscore(x_seg, hh(1:end, index))];
    end
    key_indices = find(key_scores);
    if (length(key_indices) == 2)
        f1 = center_freqs(key_indices(1));
        f2 = center_freqs(key_indices(2));
        row = find(dtmf.rowTones(1:end, 1) == f1);
        col = find(dtmf.colTones(1, 1:end) == f2);
        key_1 = dtmf.keys(row, col);
        lst = [lst, key_1];
    end
end
end