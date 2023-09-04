chmod 777 ai_door_management_module.sh
chmod u+x ai_door_control.sh
if [ -d "door_management_fi" ]; then
  mv door_management_fi door_management_files
fi
cd door_management_files
if [ ! -d "door_configuration" ]; then
  mkdir door_configuration
fi
for file in `find . -maxdepth 1 -type f -name "*.conf"`
do
  mv $file door_configuration; 
done

if [ ! -d "door_map" ]; then
  mkdir door_map
fi

if [ -f "door_map_1.1" ]; then
  mv door_map_1.1 door_map
fi

if [ ! -d "door_logs" ]; then
  mkdir door_logs
fi

for file in `find . -maxdepth 1 -type f -name "*.log"`
do
  mv $file door_logs
done

cd ..
