# 激活所属的 conda 环境
source {your conda path}/anaconda3/etc/profile.d/conda.sh
conda activate base

date;

# 执行 Jupyter Notebook
jupyter nbconvert --to notebook --execute {your path}/cwc_tracker.ipynb

date;