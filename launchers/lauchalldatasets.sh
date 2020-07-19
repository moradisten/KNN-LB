CUR_DIR=$(cd .. && pwd)
for d in $CUR_DIR/datasets/*; do
  if [ -d $d ]; then
    dataset=$(basename $d)
    DATASET_DIR=$CUR_DIR/datasets/$dataset
    echo ""
    echo "Executing dataset [ $dataset ]  ..."
    python3 ../Runner.py $CUR_DIR -name=$dataset -train=$DATASET_DIR/"$dataset"_TRAIN.arff -test=$DATASET_DIR/"$dataset"_TEST.arff -window=2 -v=4.2
    echo "Classification process [ $dataset ] finished"
  fi
done