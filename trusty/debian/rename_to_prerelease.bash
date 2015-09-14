if [[ ${#} != 1 ]]; then
    echo "Usage: ${0} <packagename>"
    exit 1
fi

for i in *${1}*; do
    name=${i/.*}
    extension=${i#*.}
    #new_file=${name/6/7}.${extension}
    new_file=${name}-haptix.${extension}
    echo "$i -> ${new_file}"
    hg mv $i ${new_file}
done
