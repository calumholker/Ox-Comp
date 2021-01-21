%User inputs the file name as a string
File_Name = input('Enter the file name: ', 's');
%The info about this file is displayed and errors are caught
try
    disp(imfinfo(File_Name));
catch
    disp("This is not a valid file name in this database");
end
%User inputs the directory
Directory_Input = input('Enter the directory name: .', 's');
Directory_Name = "*." + Directory_Input;
%Files of this directory are shown and errors are caught
try
    Images_in_Directory = dir(Directory_Name);
    for i = 1:size(Images_in_Directory,1)
        disp(imfinfo(Images_in_Directory(i).name));
    end
catch
    disp("This is not a valid image directory");
end