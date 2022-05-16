rel_path=$1
components=$2

cd $rel_path

echo $components | tr "," "\n" | while read line;
do
  mkdir $line || continue
  cd $line 
  component_name=$(echo $line | cut -c 1 | tr [:lower:] [:upper:])$(echo $line | cut -c 2-)
  style=$line
  touch $component_name.jsx $style.css

  echo "import React from 'react';
import './$style.css';

const $component_name = () => {
  return (
    <div>$component_name</div>
  );
};

export default $component_name;" >> $component_name.jsx

  cd ..
  echo "export { default as $component_name } from './$line/$component_name';" >> index.js;
done