if length(ARGS)>0
  dir=ARGS[1]
  for a in readdir(dir)
      fullname=joinpath(dir,a)
      rm(fullname,recursive=true)
  end
  for i=0:10
    open(dir*"/"*lpad(string(i),3,'0')*".mp4","w")
  end

end
