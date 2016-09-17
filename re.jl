
function ismp4(args::AbstractString)
 splitext(args)[end]==".mp4"&&return true
  false
end

function issrt(args::AbstractString)
 splitext(args)[end]==".srt"&&return true
  false
end



if length(ARGS)>0
  dir=ARGS[1]
  files=readdir(dir)
  mp4_files=filter(ismp4,files)
  srt_files=filter(issrt,files)
  if length(mp4_files)===length(srt_files)
    i=0
    for variable in mp4_files
      i=i+1
      src::AbstractString=joinpath(dir,variable)
      target::AbstractString=joinpath(dir,splitext(srt_files[i])[1]*".mp4")
      mv(src,target)
    end
  end
end
