% 指定包含要运行的 .mlx 文件的文件夹路径
folder_path = 'E:\edxmatlab\setupscriptdownload\MATLAB Course Files\Section 1\selflearning\stochasticmedia\run.all\u3/';

% 获取文件夹中的所有 .mlx 文件
mlx_files = dir(fullfile(folder_path, '*.mlx'));

% 循环运行每个 .mlx 文件
for i = 1:length(mlx_files)
    mlx_file_path = fullfile(folder_path, mlx_files(i).name);
    
    fprintf('Running %s...\n', mlx_file_path);
    matlab.internal.liveeditor.executeAndSave(mlx_file_path);
    
    fprintf('%s has been executed.\n', mlx_file_path);
end

fprintf('All .mlx files have been executed.\n');
