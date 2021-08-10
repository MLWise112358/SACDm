function cum = cumulant(im,n)

switch n
    case 1
        cum = 0;
    case 2
        cum = mean(im(:,:,1:end-1).*im(:,:,2:end),3);
    case 3
        cum = mean(im(:,:,1:end-2).*im(:,:,2:end-1).*im(:,:,3:end),3);
    case 4
        cum = -mean(im(:,:,1:end-3).*im(:,:,4:end),3).*mean(im(:,:,2:end-2).*im(:,:,3:end-1),3)-mean(im(:,:,1:end-3).*im(:,:,3:end-1),3).*mean(im(:,:,2:end-2).*im(:,:,4:end),3)-mean(im(:,:,1:end-3).*im(:,:,2:end-2),3).*mean(im(:,:,3:end-1).*im(:,:,4:end),3)+mean(im(:,:,1:end-3).*im(:,:,2:end-2).*im(:,:,3:end-1).*im(:,:,4:end),3);
    case 5
        cum = -mean(im(:,:,4:end-1).*im(:,:,5:end),3).*mean(im(:,:,1:end-4).*im(:,:,2:end-3).*im(:,:,3:end-2),3)-mean(im(:,:,3:end-2).*im(:,:,5:end),3).*mean(im(:,:,1:end-4).*im(:,:,2:end-3).*im(:,:,4:end-1),3)-mean(im(:,:,3:end-2).*im(:,:,4:end-1),3).*mean(im(:,:,1:end-4).*im(:,:,2:end-3).*im(:,:,5:end),3)-mean(im(:,:,2:end-3).*im(:,:,5:end),3).*mean(im(:,:,1:end-4).*im(:,:,3:end-2).*im(:,:,4:end-1),3)-mean(im(:,:,2:end-3).*im(:,:,4:end-1),3).*mean(im(:,:,1:end-4).*im(:,:,3:end-2).*im(:,:,5:end),3)-mean(im(:,:,2:end-3).*im(:,:,3:end-2),3).*mean(im(:,:,1:end-4).*im(:,:,4:end-1).*im(:,:,5:end),3)-mean(im(:,:,1:end-4).*im(:,:,5:end),3).*mean(im(:,:,2:end-3).*im(:,:,3:end-2).*im(:,:,4:end-1),3)-mean(im(:,:,1:end-4).*im(:,:,4:end-1),3).*mean(im(:,:,2:end-3).*im(:,:,3:end-2).*im(:,:,5:end),3)-mean(im(:,:,1:end-4).*im(:,:,3:end-2),3).*mean(im(:,:,2:end-3).*im(:,:,4:end-1).*im(:,:,5:end),3)-mean(im(:,:,1:end-4).*im(:,:,2:end-3),3).*mean(im(:,:,3:end-2).*im(:,:,4:end-1).*im(:,:,5:end),3)+mean(im(:,:,1:end-4).*im(:,:,2:end-3).*im(:,:,3:end-2).*im(:,:,4:end-1).*im(:,:,5:end),3);
    case 6
        cum = 2.*mean(im(:,:,1:end-5).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,5:end-1),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2),3)+2.*mean(im(:,:,1:end-5).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,6:end),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2),3)+2.*mean(im(:,:,1:end-5).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2),3).*mean(im(:,:,3:end-3).*im(:,:,5:end-1),3)+2.*mean(im(:,:,1:end-5).*im(:,:,4:end-2),3).*mean(im(:,:,2:end-4).*im(:,:,6:end),3).*mean(im(:,:,3:end-3).*im(:,:,5:end-1),3)+2.*mean(im(:,:,1:end-5).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2),3).*mean(im(:,:,3:end-3).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,4:end-2),3).*mean(im(:,:,2:end-4).*im(:,:,5:end-1),3).*mean(im(:,:,3:end-3).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3),3).*mean(im(:,:,4:end-2).*im(:,:,5:end-1),3)+2.*mean(im(:,:,1:end-5).*im(:,:,3:end-3),3).*mean(im(:,:,2:end-4).*im(:,:,6:end),3).*mean(im(:,:,4:end-2).*im(:,:,5:end-1),3)+2.*mean(im(:,:,1:end-5).*im(:,:,2:end-4),3).*mean(im(:,:,3:end-3).*im(:,:,6:end),3).*mean(im(:,:,4:end-2).*im(:,:,5:end-1),3)+2.*mean(im(:,:,1:end-5).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3),3).*mean(im(:,:,4:end-2).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,3:end-3),3).*mean(im(:,:,2:end-4).*im(:,:,5:end-1),3).*mean(im(:,:,4:end-2).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,2:end-4),3).*mean(im(:,:,3:end-3).*im(:,:,5:end-1),3).*mean(im(:,:,4:end-2).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,4:end-2),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3),3).*mean(im(:,:,5:end-1).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,3:end-3),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2),3).*mean(im(:,:,5:end-1).*im(:,:,6:end),3)+2.*mean(im(:,:,1:end-5).*im(:,:,2:end-4),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2),3).*mean(im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,5:end-1).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,4:end-2),3)-mean(im(:,:,1:end-5).*im(:,:,4:end-2).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,5:end-1),3)-mean(im(:,:,1:end-5).*im(:,:,4:end-2).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2).*im(:,:,5:end-1),3)-mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,4:end-2),3).*mean(im(:,:,2:end-4).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,6:end),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,5:end-1),3)-mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,5:end-1),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,4:end-2),3).*mean(im(:,:,3:end-3).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,3:end-3),3).*mean(im(:,:,4:end-2).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,5:end-1).*im(:,:,6:end),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,4:end-2),3)-mean(im(:,:,4:end-2).*im(:,:,6:end),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,5:end-1),3)-mean(im(:,:,4:end-2).*im(:,:,5:end-1),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,6:end),3)-mean(im(:,:,3:end-3).*im(:,:,6:end),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,4:end-2).*im(:,:,5:end-1),3)-mean(im(:,:,3:end-3).*im(:,:,5:end-1),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,4:end-2).*im(:,:,6:end),3)-mean(im(:,:,3:end-3).*im(:,:,4:end-2),3).*mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,2:end-4).*im(:,:,6:end),3).*mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,5:end-1),3)-mean(im(:,:,2:end-4).*im(:,:,5:end-1),3).*mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,6:end),3)-mean(im(:,:,2:end-4).*im(:,:,4:end-2),3).*mean(im(:,:,1:end-5).*im(:,:,3:end-3).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,2:end-4).*im(:,:,3:end-3),3).*mean(im(:,:,1:end-5).*im(:,:,4:end-2).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,6:end),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,5:end-1),3)-mean(im(:,:,1:end-5).*im(:,:,5:end-1),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,4:end-2),3).*mean(im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,3:end-3),3).*mean(im(:,:,2:end-4).*im(:,:,4:end-2).*im(:,:,5:end-1).*im(:,:,6:end),3)-mean(im(:,:,1:end-5).*im(:,:,2:end-4),3).*mean(im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,5:end-1).*im(:,:,6:end),3)+mean(im(:,:,1:end-5).*im(:,:,2:end-4).*im(:,:,3:end-3).*im(:,:,4:end-2).*im(:,:,5:end-1).*im(:,:,6:end),3);
end


